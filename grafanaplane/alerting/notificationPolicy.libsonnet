local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      notificationPolicy = raw.alerting.v1alpha1.notificationPolicy,
      forProvider = notificationPolicy.spec.parameters.forProvider;

{
  local root = self,

  '#': d.package.newSub(
    'notificationPolicy',
    'Provides functions to set up a notification policy.',
  ),

  '#new': d.func.new(
    '`new` creates a new notificationPolicy resource.',
    [
      d.arg('name', d.T.string),
      d.arg('defaultContactPointName', d.T.string),
      d.arg('groupBy', d.T.array, default=['...']),
    ]
  ),
  new(name, defaultContactPointName, groupBy=['...']):
    notificationPolicy.new(name)
    + forProvider.withContactPoint(defaultContactPointName)
    + forProvider.withGroupBy(groupBy),

  contactPointRef: forProvider.contactPointRef,
  contactPointSelector: forProvider.contactPointSelector,

  '#withContactPoint': forProvider['#withContactPoint'],
  withContactPoint: forProvider.withContactPoint,
  '#withContactPointRef': forProvider['#withContactPointRef'],
  withContactPointRef: forProvider.withContactPointRef,
  '#withContactPointSelector': forProvider['#withContactPointSelector'],
  withContactPointSelector: forProvider.withContactPointSelector,
  '#withDisableProvenance': forProvider['#withDisableProvenance'],
  withDisableProvenance: forProvider.withDisableProvenance,
  '#withGroupBy': forProvider['#withGroupBy'],
  withGroupBy: forProvider.withGroupBy,
  '#withGroupByMixin': forProvider['#withGroupByMixin'],
  withGroupByMixin: forProvider.withGroupByMixin,
  '#withGroupInterval': forProvider['#withGroupInterval'],
  withGroupInterval: forProvider.withGroupInterval,
  '#withGroupWait': forProvider['#withGroupWait'],
  withGroupWait: forProvider.withGroupWait,
  '#withPolicy': forProvider['#withPolicy'],
  withPolicy: forProvider.withPolicy,
  '#withPolicyMixin': forProvider['#withPolicyMixin'],
  withPolicyMixin: forProvider.withPolicyMixin,
  '#withRepeatInterval': forProvider['#withRepeatInterval'],
  withRepeatInterval: forProvider.withRepeatInterval,

  policy:
    forProvider.policy
    + {
      policy:: {},
    },

  util: {
    '#': d.package.newSub('NotificationPolicy.util', ''),

    '#commonMatchers':: d.object.new(
      |||
        `commonMatchers` provides a set of common matchers. Adding them will append them to already configured matchers.
      |||
    ),
    commonMatchers: {
      local this = self,

      '#alert':: d.fn(
        '`alert` matches one or more alert names.',
        args=[d.arg('alertname', d.T.array)]
      ),
      alert(alertname): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'alertname',
          alertname
        )
      ),

      '#cluster':: d.fn(
        '`cluster` matches a cluster.',
        args=[d.arg('cluster', d.T.array)]
      ),
      cluster(cluster): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'cluster',
          cluster
        )
      ),

      '#team':: d.fn(
        '`team` matches a team.',
        args=[d.arg('team', d.T.array)]
      ),
      team(team): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'team',
          team
        )
      ),

      '#severity':: d.fn(
        '`severity` matches a severity.',
        args=[d.arg('severity', d.T.array)]
      ),
      severity(severity): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'severity',
          severity
        )
      ),

      severityMatcher: {
        '#critical':: d.fn('`critical` matches a critical severity.',),
        critical(): this.severity('critical'),

        '#warning':: d.fn('`warning` matches a warning severity.',),
        warning(): this.severity('warning'),

        '#info':: d.fn('`info` matches a info severity.',),
        info(): this.severity('info'),
      },

      '#job':: d.fn(
        '`job` matches one or more jobs.',
        args=[d.arg('job', d.T.array)]
      ),
      job(job): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'job',
          job
        )
      ),

      '#namespace':: d.fn(
        '`namespace` matches one or more namespaces.',
        args=[d.arg('namespace', d.T.array)]
      ),
      namespace(namespace): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'namespace',
          namespace
        )
      ),

      '#exportedNamespace':: d.fn(
        '`exportedNamespace` matches one or more exported_namespaces.',
        args=[d.arg('namespace', d.T.array)]
      ),
      exportedNamespace(namespace): forProvider.policy.withMatcherMixin(
        root.util.matchArrayOrString(
          'exported_namespace',
          namespace
        )
      ),
    },

    '#matchArrayOrString':: d.fn(
      '`matchArrayOrString` creates a matcher string.',
      args=[
        d.arg('key', d.T.string),
        d.arg('arr', d.T.array),  // can also be a string
      ]
    ),
    matchArrayOrString(key, arr)::
      forProvider.policy.matcher.withLabel(key)
      + forProvider.policy.matcher.withMatch('=~')
      + forProvider.policy.matcher.withValue(
        if std.isArray(arr)
        then std.join('|', arr)
        else arr
      ),

    '#splitMatcherString':: d.fn(
      '`splitMatcherString` splits the key!=value string into notification policy matcher object.',
      args=[d.arg('str', d.T.string)]
    ),
    splitMatcherString(str):
      local splitters = ['!=', '!~', '=~', '='];
      std.foldl(
        function(return, splitter)
          if std.isString(return) && std.length(std.findSubstr(splitter, return)) == 1
          then
            local split = std.splitLimit(str, splitter, 1);
            forProvider.policy.matcher.withLabel(std.stripChars(split[0], '"'))
            + forProvider.policy.matcher.withMatch(splitter)
            + forProvider.policy.matcher.withValue(std.stripChars(split[1], '"'))
          else return
        ,
        splitters,
        str
      ),

    '#transformAlertmanagerRoute':: d.fn(
      '`transformAlertmanagerRoute` transforms a Prometheus Alertmanager route into a notification policy.',
      args=[d.arg('route', d.T.object)]
    ),
    transformAlertmanagerRoute(route):
      local infunc(route, depth=1) =
        assert depth < 5 : 'NotificationPolicy does not support nesting more than 5 policies';
        assert !std.objectHas(route, 'match') : 'Field "match" is not supported';
        assert !std.objectHas(route, 'match_re') : 'Field "match_re" is not supported';
        route
        + (if std.objectHas(route, 'mute_time_intervals')
           then {
             mute_time_intervals:: route.mute_time_intervals,  // hide in favor of mute_timings
             mute_timings: route.mute_time_intervals,
           }
           else {})
        + (if std.objectHas(route, 'active_time_intervals')
           then {
             active_time_intervals:: route.active_time_intervals,  // hide in favor of active_timings
             active_timings: route.active_time_intervals,
           }
           else {})
        + (if std.objectHas(route, 'receiver')
           then {
             receiver:: route.receiver,  // hide in favor of contactPoint
             contactPoint: route.receiver,
           }
           else {})
        + (if std.objectHas(route, 'matchers')
           then {
             matchers: std.map(root.util.splitMatcherString, super.matchers),
           }
           else {})
        + (if std.objectHas(route, 'routes')
           then {
             routes:: route.routes,  // hide in favor of policy
             policy: std.map(
               function(route) infunc(route, depth + 1),
               route.routes
             ),
           }
           else {});
      infunc(route),
  },
}
