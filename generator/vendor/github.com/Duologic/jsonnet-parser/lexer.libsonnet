local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local isValidIdChar(c) =
  (xtd.ascii.isLower(c)
   || xtd.ascii.isUpper(c)
   || xtd.ascii.isNumber(c)
   || c == '_');

local stripWhitespace(str) =
  std.stripChars(str, [' ', '\t', '\n', '\r']);

local stripLeadingComments(s) =
  local str = stripWhitespace(s);
  local findIndex(t, s) =
    local f = std.findSubstr(t, s);
    if std.length(f) > 0
    then f[0]
    else std.length(s);
  local stripped =
    if std.startsWith(str, '//')
    then str[findIndex('\n', str):]
    else if std.startsWith(str, '#')
    then str[findIndex('\n', str):]
    else if std.startsWith(str, '/*')
    then str[findIndex('*/', str) + 2:]
    else null;
  if stripped != null
  then stripLeadingComments(stripped)
  else str;

{
  keywords: [
    'assert',
    'error',

    'if',
    'then',
    'else',
    'for',
    'in',  // binaryop, see lexIdentifier
    'super',

    'function',
    'tailstrict',

    'local',
    'import',
    'importstr',
    'importbin',

    // literals, handled by parser
    //'null',
    //'true',
    //'false',
    //'self',
    //'$', // see lexOperator
  ],

  lexIdentifier(str):
    if xtd.ascii.isNumber(str[0])
    then []
    else
      local aux(index=0, return='') =
        if index < std.length(str) && isValidIdChar(str[index])
        then aux(index + 1, return + str[index])
        else return;
      local value = aux();
      if value == 'in'
      then ['OPERATOR', value]
      else if std.member(self.keywords, value)
      then ['KEYWORD', value]
      else if value != ''
      then ['IDENTIFIER', value]
      else [],

  lexNumber(str):
    if !xtd.ascii.isNumber(str[0])
    then []
    else
      local leadingZeros =
        local f(index=0, return='') =
          if index < std.length(str) && str[index] == '0'
          then f(index + 1, return + str[index])
          else return;
        f();

      local aux(index=0, return='') =
        if index < std.length(str)
        then
          if xtd.ascii.isStringJSONNumeric(return + str[index])
          then aux(index + 1, return + str[index])

          else if str[index] == '.'
          then
            if index + 1 < std.length(str)
               && xtd.ascii.isNumber(str[index + 1])
            then aux(index + 1, return + str[index])
            else error "Couldn't lex number, junk after decimal point: '%s'" % str[index + 1]

          else if str[index] == 'e' || str[index] == 'e'
          then
            if index + 1 < std.length(str)
               && xtd.ascii.isNumber(str[index + 1])
               || str[index + 1] == '-'
               || str[index + 1] == '+'
            then aux(index + 1, return + str[index])
            else error "Couldn't lex number, junk after 'E': '%s'" % str[index + 1]

          // if return was not an exponent, then signs will become operators
          else if std.length(return) > 0 && (str[index] == '-' || str[index] == '+')
                  && (return[std.length(return) - 1] == 'e' || return[std.length(return) - 1] == 'e')
          then
            if index + 1 < std.length(str)
               && xtd.ascii.isNumber(str[index + 1])
            then aux(index + 1, return + str[index])
            else error "Couldn't lex number, junk after exponent sign: '%s'" % str[index + 1]
          else return
        else return;


      local validCharAfterZero = ['.', 'e', 'E'];
      local value =
        if std.length(leadingZeros) > 0
           && std.length(str) > std.length(leadingZeros)
           && std.member(validCharAfterZero, str[std.length(leadingZeros)])
        then leadingZeros[1:] + aux(std.length(leadingZeros) - 1)
        else leadingZeros + aux(std.length(leadingZeros));

      if value != ''
      then ['NUMBER', value]
      else [],

  lexString(str):
    if std.startsWith(str, "'")
       || std.startsWith(str, '"')
    then self.lexQuotedString(str)
    else if std.startsWith(str, '@')
    then self.lexVerbatimString(str)
    else if std.startsWith(str, '|||\n')
    then self.lexTextBlock(str)
    else [],

  lexQuotedString(str):
    assert std.member(['"', "'"], str[0]) : 'Expected \' or " but got %s' % str[0];

    local startChar = str[0];

    local findLastChar = std.map(function(i) i + 1, std.findSubstr(startChar, str[1:]));

    local isEscaped(index) =
      index > 1
      && str[index - 1] == '\\'
      && !isEscaped(index - 1);

    local lastCharIndices = std.filter(function(e) !isEscaped(e), findLastChar);

    assert std.length(lastCharIndices) > 0 : 'Unterminated String';

    local value = str[1:lastCharIndices[0]];
    local lastChar = str[lastCharIndices[0]];

    local tokenName = {
      '"': 'STRING_DOUBLE',
      "'": 'STRING_SINGLE',
    };

    [tokenName[startChar], startChar + value + lastChar],

  lexVerbatimString(str):
    assert str[0] == '@' : 'Expected "@" but got "%s"' % str[0];

    local startChar = str[1];
    assert std.member(['"', "'"], startChar) : 'Expected \' or " but got %s' % startChar;

    local sub = std.strReplace(str[2:], startChar + startChar, std.char(7) + std.char(7));  // replace with BEL character to avoid matching lastChar
    local lastCharIndices = std.map(function(i) i + 2, std.findSubstr(startChar, sub));

    assert std.length(lastCharIndices) > 0 : 'Unterminated String';

    local value = str[2:lastCharIndices[0]];
    local lastChar = str[lastCharIndices[0]];

    local tokenName = {
      '"': 'VERBATIM_STRING_DOUBLE',
      "'": 'VERBATIM_STRING_SINGLE',
    };
    [tokenName[startChar], '@' + startChar + value + lastChar],

  lexTextBlock(str):
    local lines = std.split(str, '\n');

    local marker = '|||';

    assert lines[0] == marker : 'Expected "%s" but got "%s"' % [marker, lines[0]];

    local whitespaceOnFirstLine = lines[1][:std.length(lines[1]) - std.length(std.lstripChars(lines[1], ' \t'))];

    assert std.length(whitespaceOnFirstLine) > 0 : "text block's first line must start with whitespace";

    local stringlines =
      local aux(index=1, return=[]) =
        if index < std.length(lines) && std.startsWith(lines[index], whitespaceOnFirstLine)
        then aux(index + 1, return + [lines[index]])
        else return;
      aux();

    local string = std.join('\n', stringlines);
    local endmarkerIndex = std.findSubstr(marker, lines[1 + std.length(stringlines)])[0];
    local endmarker = lines[1 + std.length(stringlines)][:endmarkerIndex + 3];
    local ending = std.lstripChars(endmarker, ' \t');

    assert ending == marker : 'text block not terminated with |||';

    ['STRING_BLOCK', std.join('\n', [marker, string, endmarker])],

  lexSymbol(str):
    local symbols = ['{', '}', '[', ']', ',', '.', '(', ')', ';'];
    if std.member(symbols, str[0])
    then ['SYMBOL', str[0]]
    else [],

  lexOperator(str):
    local ops = ['!', '$', ':', '~', '+', '-', '&', '|', '^', '=', '<', '>', '*', '/', '%'];
    local noEndSequence = ['+', '-', '~', '!', '$'];
    local infunc(s) =
      if s != '' && std.member(ops, s[0])
      then [s[0]]
           + (if std.length(s) > 2
                 && !std.member(noEndSequence, s[1])
              then infunc(s[1:])
              else [])
      else [];
    local q = std.join('', infunc(str));

    assert !std.member(q, '//') : 'The sequence // is not allowed in an operator.';
    assert !std.member(q, '/*') : 'The sequence /* is not allowed in an operator.';

    if q == '$'
    then ['IDENTIFIER', q]
    else if q != ''
            && q != '|||'  // don't assert on this as it is handled by lexTextBlock
    then ['OPERATOR', q]
    else [],

  lex(s, prevEndLineNr=0, prevColumnNr=1, prev=[]):
    local str = stripLeadingComments(s);
    if str == ''
    then []
    else
      local lexicons = std.filter(
        function(l) l != [], [
          self.lexString(str),
          self.lexIdentifier(str),
          self.lexNumber(str),
          self.lexSymbol(str),
          self.lexOperator(str),
        ]
      );
      //local value = std.trace(std.manifestJson(prev), lexicons)[0][1];
      local value = lexicons[0][1];
      assert std.length(lexicons) == 1 : 'Cannot lex: "%s"' % std.manifestJson(prev);
      assert value != '' : 'Cannot lex: "%s"' % str;

      local countNewlines(s) = std.length(std.findSubstr('\n', s));
      local removedNewlinesCount = countNewlines(s) - countNewlines(str);
      local newlinesInLexicon = countNewlines(value);

      local endLineNr =
        prevEndLineNr
        + removedNewlinesCount
        + countNewlines(str[:std.length(value)]);
      local lineNr = endLineNr - newlinesInLexicon;

      local startColumnNr =
        if lineNr > prevEndLineNr
        then 1
        else prevColumnNr;
      local leadingSpacesCount = std.length(std.lstripChars(s, '\n')) - std.length(std.lstripChars(s, ' \n'));

      local columnNr = startColumnNr + leadingSpacesCount;
      local endColumnNr =
        if newlinesInLexicon == 0
        then columnNr + std.length(value)
        else columnNr;

      [lexicons[0] + [{ line: lineNr, column: columnNr }]]
      + (
        local remainder = str[std.length(lexicons[0][1]):];
        if std.length(lexicons) > 0 && remainder != ''
        then self.lex(remainder, endLineNr, endColumnNr, prev + lexicons)
        else []
      ),
}
