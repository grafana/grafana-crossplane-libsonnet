local lexer = import './lexer.libsonnet';

{
  new(file): {
    local this = self,
    local lexicon = lexer.lex(file),

    local expmsg(expected, actual) =
      'Expected "%s" but got "%s"' % [std.toString(expected), std.toString(actual)],

    local parseTokens(index, endTokens, inObject, parseF, splitTokens=[',']) =
      local infunc(index) =
        local token = lexicon[index];
        if std.member(endTokens, token[1])
        then []
        else (
          local item = parseF(index, endTokens + splitTokens, inObject);
          assert std.length(lexicon) > item.cursor
                 : 'Expected %s before next item but got end of file'
                   % [std.toString(splitTokens + endTokens)];
          local nextToken = lexicon[item.cursor];
          if std.member(endTokens, nextToken[1])
          then [item]
          else if std.member(splitTokens, nextToken[1])
          then [item + { cursor+:: 1 }]
               + infunc(item.cursor + 1)
          else error 'Expected %s before next item but got "%s"' % [std.toString(splitTokens), token]
        );
      infunc(index),

    parse():
      self.parseExpr(index=0, endTokens=[], inObject=false),

    parseExpr(index, endTokens, inObject):
      local token = lexicon[index];

      local expr =
        if token[0] == 'IDENTIFIER'
        then self.parseIdentifier(index, endTokens, inObject)
        else if std.member(['STRING_SINGLE', 'STRING_DOUBLE'], token[0])
        then self.parseString(index, endTokens, inObject)
        else if std.member(['VERBATIM_STRING_SINGLE', 'VERBATIM_STRING_DOUBLE'], token[0])
        then self.parseVerbatimString(index, endTokens, inObject)
        else if token[0] == 'STRING_BLOCK'
        then self.parseTextBlock(index, endTokens, inObject)
        else if token[0] == 'NUMBER'
        then self.parseNumber(index, endTokens, inObject)
        else if token[1] == '{'
        then self.parseObject(index, endTokens, inObject)
        else if token[1] == '['
        then self.parseArray(index, endTokens, inObject)
        else if token[1] == 'super'
        then self.parseSuper(index, endTokens, inObject)
        else if token[1] == 'local'
        then self.parseLocalBind(index, endTokens, inObject)
        else if token[1] == 'if'
        then self.parseConditional(index, endTokens, inObject)
        else if token[0] == 'OPERATOR'
        then self.parseUnary(index, endTokens, inObject)
        else if token[1] == 'function'
        then self.parseAnonymousFunction(index, endTokens, inObject)
        else if token[1] == 'assert'
        then self.parseAssertionExpr(index, endTokens, inObject)
        else if std.member(['importstr', 'importbin', 'import'], token[1])
        then self.parseImport(index, endTokens, inObject)
        else if token[1] == 'error'
        then self.parseErrorExpr(index, endTokens, inObject)
        else if token[1] == '('
        then self.parseParenthesis(index, endTokens, inObject)
        else error 'Unexpected token: "%s"' % std.toString(token);


      local parseRemainder(obj) =
        if obj.cursor == std.length(lexicon)
           || std.member(endTokens, lexicon[obj.cursor][1])
        then obj
        else
          local token = lexicon[obj.cursor];
          local expr =
            if token[1] == '.'
            then self.parseFieldaccess(obj, endTokens, inObject)
            else if token[1] == '['
            then self.parseIndexing(obj, endTokens, inObject)
            else if token[1] == '('
            then self.parseFunctioncall(obj, endTokens, inObject)
            else if token[1] == '{'
            then self.parseImplicitPlus(obj, endTokens, inObject)
            else if lexicon[obj.cursor][1] == 'in' && lexicon[obj.cursor + 1][1] == 'super'
            then self.parseExprInSuper(obj, endTokens, inObject)
            else if token[0] == 'OPERATOR'
            then self.parseBinary(obj, endTokens, inObject)
            else if token[1] == 'tailstrict'
            then self.parseTailstrict(obj, endTokens, inObject)
            else error 'Unexpected token: "%s"' % std.toString(token) + std.toString(endTokens);
          parseRemainder(expr + { location:: lexicon[obj.cursor][2] });

      parseRemainder(expr + { location:: lexicon[index][2] }),

    parseIdentifier(index, endTokens, inObject):
      local token = lexicon[index];
      local tokenValue = token[1];
      local tokenTypes = {
        'true': 'boolean',
        'false': 'boolean',
        'null': 'literal',
        'self': 'literal',
        '$': 'literal',
      };
      local type = std.get(tokenTypes, tokenValue, 'id');
      {
        type: type,
        [type]: tokenValue,
        cursor:: index + 1,
      },

    parseString(index, endTokens, inObject):
      local token = lexicon[index];
      local tokenValue = token[1];
      local expected = ['STRING_SINGLE', 'STRING_DOUBLE'];
      assert std.member(expected, token[0]) : expmsg(expected, token);
      {
        type: 'string',
        string: tokenValue[1:std.length(tokenValue) - 1],
        cursor:: index + 1,
      },

    parseVerbatimString(index, endTokens, inObject):
      local token = lexicon[index];
      local tokenValue = token[1];
      local expected = ['VERBATIM_STRING_SINGLE', 'VERBATIM_STRING_DOUBLE'];
      assert std.member(expected, token[0]) : expmsg(expected, token);
      {
        type: 'string',
        string: tokenValue[2:std.length(tokenValue) - 1],
        verbatim: true,
        cursor:: index + 1,
      },

    parseTextBlock(index, endTokens, inObject):
      local token = lexicon[index];
      local tokenValue = token[1];
      assert token[0] == 'STRING_BLOCK' : expmsg('STRING_BLOCK', token);

      local lines = std.split(tokenValue, '\n');
      local whitespaceOnFirstLine = std.length(lines[1]) - std.length(std.lstripChars(lines[1], ' \t'));
      local string = std.join('\n', [
        line[whitespaceOnFirstLine:]
        for line in lines[1:std.length(lines) - 1]
      ]);
      {
        type: 'string',
        string: string,
        textblock: true,
        cursor:: index + 1,
      },

    parseNumber(index, endTokens, inObject):
      local token = lexicon[index];
      local tokenValue = token[1];
      {
        type: 'number',
        number: tokenValue,
        cursor:: index + 1,
      },

    parseBinary(expr, endTokens, inObject):
      local binaryoperators = [
        '*',
        '/',
        '%',
        '+',
        '-',
        '<<',
        '>>',
        '<',
        '<=',
        '>',
        '>=',
        '==',
        '!=',
        'in',
        '&',
        '^',
        '|',
        '&&',
        '||',
      ];
      local index = expr.cursor;
      local leftExpr = expr;
      local binaryop = lexicon[index][1];
      assert std.member(binaryoperators, binaryop) : 'Not a binary operator: ' + lexicon[index];
      local rightExpr = self.parseExpr(index + 1, endTokens, inObject);
      {
        type: 'binary',
        binaryop: binaryop,
        left_expr: leftExpr,
        right_expr: rightExpr,
        cursor:: rightExpr.cursor,
      },

    parseUnary(index, endTokens, inObject):
      local unaryoperators = [
        '-',
        '+',
        '!',
        '~',
      ];
      local token = lexicon[index];
      assert std.member(unaryoperators, token[1]) : 'Not a unary operator: ' + std.toString(token);
      local expr = self.parseExpr(index + 1, endTokens, inObject);
      {
        type: 'unary',
        unaryop: token[1],
        expr: expr,
        cursor:: expr.cursor,
      },

    parseObject(index, endTokens, inObject):
      local endToken = '}';
      local endTokens = [endToken];
      local inObject = true;

      local token = lexicon[index];
      assert token[1] == '{' : expmsg('{', token);

      local memberEndtokens = endTokens + ['for'];
      local members =
        parseTokens(
          index + 1,
          memberEndtokens,
          inObject,
          self.parseMember,
        );

      local last = std.reverse(members)[0];
      local nextCursor =
        if std.length(members) > 0
        then last.cursor
        else index + 1;

      local isForloop = (lexicon[nextCursor][1] == 'for');
      local forspec = self.parseForspec(nextCursor, endTokens + ['for', 'if'], inObject);

      local fields = std.filter(function(member) member.type == 'field' || member.type == 'field_function', members);
      local asserts = std.filter(function(member) member.type == 'assertion', members);

      assert !(isForloop && std.length(asserts) != 0) : 'Object comprehension cannot have asserts';
      assert !(isForloop && std.length(fields) != 1) : 'Object comprehension can only have one field';
      assert !(isForloop && fields[0].fieldname.type != 'fieldname_expr') : 'Object comprehension can only have [e] fields';
      assert !(isForloop && std.get(fields[0], 'additive', false)) : 'Object comprehension field can not be [e]+ (additive)';

      local fieldIndex = std.prune(std.mapWithIndex(function(i, m) if m == fields[0] then i else null, members))[0];
      local leftObjectLocals = members[:fieldIndex];
      local rightObjectLocals = members[fieldIndex + 1:];

      local hasCompspec = std.member(['for', 'if'], lexicon[forspec.cursor][1]);
      local compspec = self.parseCompspec(forspec.cursor, endTokens, inObject);

      local cursor =
        if isForloop
        then
          if hasCompspec
          then compspec.cursor
          else forspec.cursor
        else nextCursor;

      assert lexicon[cursor][1] == endToken : expmsg(endToken, lexicon[cursor]);

      if isForloop
      then {
        type: 'object_forloop',
        forspec: forspec,
        [if hasCompspec then 'compspec']: compspec,
        field: fields[0],
        [if std.length(leftObjectLocals) > 0 then 'left_object_locals']: leftObjectLocals,
        [if std.length(rightObjectLocals) > 0 then 'right_object_locals']: rightObjectLocals,
        cursor:: cursor + 1,
      }
      else {
        type: 'object',
        members: members,
        cursor:: cursor + 1,
      },

    parseArray(index, endTokens, inObject):
      local endToken = ']';
      local endTokens = [endToken];

      local token = lexicon[index];
      assert token[1] == '[' : expmsg('[', token);

      local items =
        parseTokens(
          index + 1,
          endTokens + ['for'],
          inObject,
          self.parseExpr
        );

      local last = std.reverse(items)[0];
      local nextCursor =
        if std.length(items) > 0
        then last.cursor
        else index + 1;

      local isForloop = (lexicon[nextCursor][1] == 'for');
      local forspec = self.parseForspec(nextCursor, endTokens + ['for', 'if'], inObject);

      assert !(isForloop && std.length(items) > 1) : 'Array forloop can only have one expression';

      local hasCompspec = std.member(['for', 'if'], lexicon[forspec.cursor][1]);
      local compspec = self.parseCompspec(forspec.cursor, endTokens, inObject);

      local cursor =
        if isForloop
        then
          if hasCompspec
          then compspec.cursor
          else forspec.cursor
        else nextCursor;

      assert lexicon[cursor][1] == endToken : expmsg(endToken, lexicon[cursor]);

      if isForloop
      then {
        type: 'forloop',
        expr: items[0],
        forspec: forspec,
        [if hasCompspec then 'compspec']: compspec,
        cursor:: cursor + 1,
      }
      else {
        type: 'array',
        items: items,
        cursor:: cursor + 1,
      },

    parseFieldaccess(obj, endTokens, inObject):
      local token = lexicon[obj.cursor];
      assert token[1] == '.' : expmsg('.', token);
      local id = self.parseIdentifier(obj.cursor + 1, endTokens, inObject);
      {
        type: 'fieldaccess',
        exprs: [obj],
        id: id,
        cursor:: id.cursor,
      },

    parseIndexing(obj, endTokens, inObject):
      local endToken = ']';
      assert lexicon[obj.cursor][1] == '[' : expmsg('[', lexicon[obj.cursor]);
      local literal(cursor) = {
        type: 'literal',
        literal: '',
        cursor:: cursor,
      };

      local nextToken = lexicon[obj.cursor + 1];
      assert nextToken[1] != ']' : 'Indexing requires an expression';

      local hasStart = nextToken[1][0] != ':';
      local startExpr =
        if lexicon[obj.cursor + 1][1][0] != ':'
        then self.parseExpr(obj.cursor + 1, [']', ':', '::'], inObject)
        else literal(obj.cursor + 1);

      local hasEnding = lexicon[startExpr.cursor][1] == ':'
                        || lexicon[startExpr.cursor][1] == '::';
      local endingExpr =
        if !hasEnding
        then null
        else if lexicon[startExpr.cursor][1] == ':'
                && lexicon[startExpr.cursor + 1][1] != ']'
        then self.parseExpr(startExpr.cursor + 1, [']', ':'], inObject)
        else if lexicon[startExpr.cursor][1] == ':'
        then literal(startExpr.cursor + 1)
        else literal(startExpr.cursor);

      local stepCursor =
        if hasEnding
        then endingExpr.cursor
        else startExpr.cursor;

      local hasStep = (lexicon[stepCursor][1] == ':'
                       || lexicon[stepCursor][1] == '::');
      local stepExpr =
        if !hasStep
        then null
        else if lexicon[stepCursor + 1][1] != ']'
        then self.parseExpr(stepCursor + 1, [']'], inObject)
        else literal(stepCursor + 1);


      local exprs =
        std.filter(
          function(n) n != null, [
            startExpr,
            endingExpr,
            stepExpr,
          ]
        );

      local last = std.reverse(exprs)[0];
      local cursor = last.cursor;
      assert lexicon[cursor][1] == endToken : expmsg(endToken, lexicon[cursor]);
      {
        type: 'indexing',
        expr: obj,
        exprs: exprs,
        cursor:: cursor + 1,
      },

    parseSuper(index, endTokens, inObject):
      assert lexicon[index][1] == 'super' : expmsg('super', lexicon[index]);
      assert inObject : "Can't use super outside of an object";
      local token = lexicon[index + 1];
      assert std.member(['.', '['], token[1]) : expmsg(['.', '['], token);
      {
        '.':
          local id = this.parseIdentifier(index + 2, endTokens, inObject);
          {
            type: 'fieldaccess_super',
            id: id,
            cursor:: id.cursor,
          },

        '[':
          local endToken = ']';
          local expr = this.parseExpr(index + 2, [endToken], inObject);
          assert lexicon[expr.cursor][1] == endToken : expmsg(endToken, lexicon[expr.cursor]);
          {
            type: 'indexing_super',
            expr: expr,
            cursor:: expr.cursor + 1,
          },
      }[token[1]],

    parseFunctioncall(obj, endTokens, inObject):
      local endToken = ')';
      assert lexicon[obj.cursor][1] == '(' : expmsg('(', lexicon[obj.cursor]);

      local args =
        parseTokens(
          obj.cursor + 1,
          [endToken],
          inObject,
          self.parseArg,
        );

      local validargs =
        std.foldl(
          function(acc, arg)
            assert !(std.length(acc) > 0
                     && 'id' in std.reverse(acc)[0]
                     && !('id' in arg))
                   : 'Positional argument after a named argument is not allowed';
            acc + [arg],
          args,
          []
        );

      local last = std.reverse(args)[0];
      local cursor =
        if std.length(args) > 0
        then last.cursor
        else obj.cursor + 1;

      assert lexicon[cursor][1] == endToken : expmsg(endToken, lexicon[cursor]);
      {
        type: 'functioncall',
        expr: obj,
        args: validargs,
        cursor:: cursor + 1,
      },

    parseArg(index, endTokens, inObject):
      local expr = self.parseExpr(index, endTokens + ['='], inObject);
      local hasExpr = expr.cursor < std.length(lexicon)
                      && lexicon[expr.cursor][1] == '=';
      local id = self.parseIdentifier(index, endTokens, inObject);
      local exprValue = self.parseExpr(id.cursor + 1, endTokens, inObject);
      if hasExpr
      then {
        type: 'arg',
        id: id,
        expr: exprValue,
        cursor:: exprValue.cursor,
      }
      else {
        type: 'arg',
        expr: expr,
        cursor:: expr.cursor,
      },

    parseLocalBind(index, endTokens, inObject):
      local bindEndToken = ';';
      assert lexicon[index][1] == 'local' : expmsg('local', lexicon[index]);
      local binds =
        parseTokens(
          index + 1,
          [bindEndToken],
          inObject,
          self.parseBind,
        );
      local last = std.reverse(binds)[0];
      assert lexicon[last.cursor][1] == bindEndToken : expmsg(bindEndToken, lexicon[last.cursor]);
      local expr = self.parseExpr(last.cursor + 1, endTokens, inObject);
      {
        type: 'local_bind',
        bind: binds[0],
        expr: expr,
        [if std.length(binds) > 1 then 'additional_binds']: binds[1:],
        cursor:: expr.cursor,
      },

    parseBind(index, endTokens, inObject):
      local id = self.parseIdentifier(index, endTokens, inObject);
      local isFunction = (lexicon[id.cursor][1] == '(');
      local params = self.parseParams(id.cursor, endTokens, inObject);
      local nextCursor =
        if isFunction
        then params.cursor
        else id.cursor;
      assert lexicon[nextCursor][1] == '=' : expmsg('=', lexicon[nextCursor]);
      local expr = self.parseExpr(nextCursor + 1, endTokens, inObject);
      if isFunction
      then {
        type: 'bind_function',
        id: id,
        expr: expr,
        params: params,
        cursor:: expr.cursor,
      }
      else {
        type: 'bind',
        id: id,
        expr: expr,
        cursor:: expr.cursor,
      },

    parseConditional(index, endTokens, inObject):
      assert lexicon[index][1] == 'if' : expmsg('if', lexicon[index]);
      local ifExpr = self.parseExpr(index + 1, ['then'], inObject);

      assert lexicon[ifExpr.cursor][1] == 'then' : expmsg('then', lexicon[ifExpr.cursor]);
      local thenExpr = self.parseExpr(ifExpr.cursor + 1, ['else'] + endTokens, inObject);

      local hasElseExpr = thenExpr.cursor < std.length(lexicon)
                          && lexicon[thenExpr.cursor][1] == 'else';
      local elseExpr = self.parseExpr(thenExpr.cursor + 1, endTokens, inObject);

      local cursor =
        if hasElseExpr
        then elseExpr.cursor
        else thenExpr.cursor;
      {
        type: 'conditional',
        if_expr: ifExpr,
        then_expr: thenExpr,
        [if hasElseExpr then 'else_expr']: elseExpr,
        cursor:: cursor,
      },

    parseImplicitPlus(obj, endTokens, inObject):
      local object = self.parseObject(obj.cursor, endTokens, inObject);
      {
        type: 'implicit_plus',
        expr: obj,
        object: object,
        cursor:: object.cursor,
      },

    parseAnonymousFunction(index, endTokens, inObject):
      assert lexicon[index][1] == 'function' : expmsg('function', lexicon[index]);
      local params = self.parseParams(index + 1, endTokens, inObject);
      local expr = self.parseExpr(params.cursor, endTokens, inObject);
      {
        type: 'anonymous_function',
        params: params,
        expr: expr,
        cursor:: expr.cursor,
      },

    parseAssertionExpr(index, endTokens, inObject):
      local assertionEndToken = ';';
      local assertion = self.parseAssertion(index, [assertionEndToken], inObject);
      assert lexicon[assertion.cursor][1] == assertionEndToken : expmsg(assertionEndToken, lexicon[assertion.cursor]);
      local expr = self.parseExpr(assertion.cursor + 1, endTokens, inObject);
      {
        type: 'assertion_expr',
        assertion: assertion,
        expr: expr,
        cursor:: expr.cursor,
      },

    parseAssertion(index, endTokens, inObject):
      assert lexicon[index][1] == 'assert' : expmsg('assert', lexicon[index]);
      local expr = self.parseExpr(index + 1, [':'] + endTokens, inObject);
      local hasReturnExpr = lexicon[expr.cursor][1] == ':';
      local returnExpr = self.parseExpr(expr.cursor + 1, endTokens, inObject);
      local cursor =
        if hasReturnExpr
        then returnExpr.cursor
        else expr.cursor;
      assert std.member(endTokens, lexicon[cursor][1]) : expmsg(std.join(',', endTokens), lexicon[cursor]);
      {
        type: 'assertion',
        expr: expr,
        [if hasReturnExpr then 'return_expr']: returnExpr,
        cursor:: cursor,
      },

    parseImport(index, endTokens, inObject):
      local token = lexicon[index];
      local possibleValues = ['importstr', 'importbin', 'import'];
      assert std.member(possibleValues, token[1]) : expmsg(possibleValues, token);
      local nextToken = lexicon[index + 1];
      local expected = [
        'STRING_SINGLE',
        'STRING_DOUBLE',
        'VERBATIM_STRING_SINGLE',
        'VERBATIM_STRING_DOUBLE',
      ];
      assert nextToken[0] != 'STRING_BLOCK' : 'Block string literal not allowed for imports';
      local path = self.parseExpr(index + 1, endTokens, inObject);
      assert std.member(path.type, 'string') : 'Computed imports are not allowed';
      {
        type: token[1] + '_statement',
        path: path.string,
        cursor:: path.cursor,
      },

    parseErrorExpr(index, endTokens, inObject):
      assert lexicon[index][1] == 'error' : expmsg('error', lexicon[index]);
      local expr = self.parseExpr(index + 1, endTokens, inObject);
      {
        type: 'error_expr',
        expr: expr,
        cursor:: expr.cursor,
      },

    parseExprInSuper(obj, endTokens, inObject):
      assert inObject : "Can't use super outside of an object";
      assert lexicon[obj.cursor][1] == 'in'
             && lexicon[obj.cursor + 1][1] == 'super'
             : expmsg('in super', [lexicon[obj.cursor], lexicon[obj.cursor + 1]]);
      {
        type: 'expr_in_super',
        expr: obj,
        cursor:: obj.cursor + 2,
      },

    parseParenthesis(index, endTokens, inObject):
      assert lexicon[index][1] == '(' : expmsg('(', lexicon[index]);
      local expr = self.parseExpr(index + 1, [')'], inObject);
      assert lexicon[expr.cursor][1] == ')' : expmsg(')', lexicon[expr.cursor]);
      {
        type: 'parenthesis',
        expr: expr,
        cursor:: expr.cursor + 1,
      },

    parseTailstrict(obj, endTokens, inObject):
      assert lexicon[obj.cursor][1] == 'tailstrict' : expmsg('tailstrict', lexicon[obj.cursor]);
      {
        type: 'tailstrict',
        expr: obj,
        cursor:: obj.cursor + 1,
      },

    parseMember(index, endTokens, inObject):
      local token = lexicon[index];
      (
        if token[1] == 'local'
        then self.parseObjectLocal(index, endTokens, inObject)
        else if token[1] == 'assert'
        then self.parseAssertion(index, endTokens, inObject)
        else self.parseField(index, endTokens, inObject)
      )
      + { location:: lexicon[index][2] },

    parseObjectLocal(index, endTokens, inObject):
      local token = lexicon[index];
      assert token[1] == 'local' : expmsg('local', token);
      local bind = self.parseBind(index + 1, endTokens, inObject=true);
      {
        type: 'object_local',
        bind: bind,
        cursor:: bind.cursor,
      },

    parseField(index, endTokens, inObject):
      local expectedOperators = [':', '::', ':::', '+:', '+::', '+:::'];
      local fieldname = self.parseFieldname(index, expectedOperators + ['('], inObject);

      local isFunction = (lexicon[fieldname.cursor][1] == '(');
      local params = self.parseParams(fieldname.cursor, endTokens, inObject);

      local nextCursor =
        if isFunction
        then params.cursor
        else fieldname.cursor;

      local operator = lexicon[nextCursor][1];
      assert std.member(expectedOperators, operator) : expmsg(std.join('","', expectedOperators), lexicon[nextCursor]);

      local additive = std.startsWith(operator, '+');
      local h =
        if additive
        then operator[1:]
        else operator;

      local expr = self.parseExpr(nextCursor + 1, endTokens, inObject);
      {
        type: 'field',
        fieldname: fieldname,
        [if additive then 'additive']: additive,
        h: h,
        expr: expr,
        cursor:: expr.cursor,
      }
      + (if isFunction
         then {
           type: 'field_function',
           params: params,
         }
         else {}),

    parseFieldname(index, endTokens, inObject):
      local token = lexicon[index];
      local expectedToken = [
        'IDENTIFIER',
        'STRING_SINGLE',
        'STRING_DOUBLE',
        'VERBATIM_STRING_SINGLE',
        'VERBATIM_STRING_DOUBLE',
        'STRING_BLOCK',
      ];
      if std.member(expectedToken, token[0])
      then
        local expr = self.parseExpr(index, endTokens, inObject);
        local expectedTypes = ['string', 'id'];
        assert std.member(expectedTypes, expr.type) : expmsg(expectedTypes, expr.type);
        expr
      else self.parseFieldnameExpr(index, endTokens, inObject),

    parseFieldnameExpr(index, endTokens, inObject):
      local token = lexicon[index];
      assert token[1] == '[' : expmsg('[', token);
      local expr = self.parseExpr(index + 1, [']'], inObject);
      assert lexicon[expr.cursor][1] == ']' : expmsg(']', lexicon[expr.cursor]);
      {
        type: 'fieldname_expr',
        expr: expr,
        cursor:: expr.cursor + 1,
      },

    parseParams(index, endTokens, inObject):
      local endToken = ')';
      local token = lexicon[index];
      assert token[1] == '(' : expmsg('(', token);
      local params =
        parseTokens(
          index + 1,
          [endToken],
          inObject,
          self.parseParam,
        );
      local last = std.reverse(params)[0];
      local cursor =
        if std.length(params) > 0
        then last.cursor
        else index + 1;
      assert lexicon[cursor][1] == endToken : expmsg(endToken, lexicon[cursor]);
      {
        type: 'params',
        params: params,
        cursor:: cursor + 1,
      },

    parseParam(index, endTokens, inObject):
      local id = self.parseExpr(index, endTokens + ['='], inObject);
      local hasExpr = lexicon[id.cursor][1] == '=';
      local expr = self.parseExpr(id.cursor + 1, endTokens, inObject);
      local cursor =
        if hasExpr
        then expr.cursor
        else id.cursor;
      {
        type: 'param',
        id: id,
        [if hasExpr then 'expr']: expr,
        cursor:: cursor,
      },

    parseForspec(index, endTokens, inObject):
      local token = lexicon[index];
      assert token[1] == 'for' : expmsg('for', token);
      local id = self.parseIdentifier(index + 1, ['in'], inObject);
      assert lexicon[id.cursor][1] == 'in' : expmsg('in', lexicon[id.cursor]);
      local expr = self.parseExpr(id.cursor + 1, endTokens, inObject);
      {
        type: 'forspec',
        id: id,
        expr: expr,
        cursor:: expr.cursor,
      },

    parseIfspec(index, endTokens, inObject):
      local token = lexicon[index];
      assert token[1] == 'if' : expmsg('if', token);
      local expr = self.parseExpr(index + 1, endTokens, inObject);
      {
        type: 'ifspec',
        expr: expr,
        cursor:: expr.cursor,
      },

    parseCompspec(index, endTokens, inObject):
      local compspecEndTokens = endTokens;
      local splitTokens = ['for', 'if'];
      assert std.member(splitTokens, lexicon[index][1]) : expmsg(splitTokens, lexicon[index]);

      local parseSpecs(index, endTokens, inObject) =
        // Doing funky index juggling because parseTokens moves cursor past splitToken
        local token = lexicon[index - 1];
        if std.member(compspecEndTokens, token[1])
        then { cursor: index }
        else {
          'for': this.parseForspec(index - 1, endTokens, inObject),
          'if': this.parseIfspec(index - 1, endTokens, inObject),
        }[token[1]];

      local items =
        parseTokens(
          index + 1,
          endTokens,
          inObject,
          parseSpecs,
          splitTokens,
        );
      local last = std.reverse(items)[0];
      {
        type: 'compspec',
        items: items,
        cursor:: last.cursor,
      },
  },
}
