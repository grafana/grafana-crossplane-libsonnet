local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import './zz/main.libsonnet';

{
  '#': d.package.newSub('sm', ''),

  check: {
    local forProvider = raw.sm.v1alpha1.check.spec.parameters.forProvider,

    '#new': d.func.new(
      |||
        `new` creates a new synthetic monitoring check for the betterops Grafana Cloud environment.

        Parameters:
        - `name`: Name of the check
        - `job`: Job identifier for the check
        - `url`: Target URL to monitor
      |||,
      [
        d.arg('name', d.T.string),
        d.arg('job', d.T.string),
        d.arg('url', d.T.string),
      ]
    ),
    new(name, job, url):
      local slug = xtd.ascii.stringToRFC1123(name);
      raw.sm.v1alpha1.check.new(slug)
      + forProvider.withJob(job)
      + forProvider.withTarget(url)
      + forProvider.withAlertSensitivity('none')  // used for legacy alerts, use GMA instead
      + forProvider.withBasicMetricsOnly(true)
      + forProvider.withEnabled(true)
      + forProvider.withFrequency(60000)  // ms
      + forProvider.withTimeout(10000),  // ms

    '#withProbes': d.func.new(
      |||
        `withProbes` takes a list of probe location IDs where the target will be checked from.

        The IDs can be found by using the 'Synthetic Monitoring' data source in Explore.

        NOTE: The IDs may be different depending on the stack's location.

        Parameters:
        - `probes`: Array of probe IDs to use for monitoring
      |||,
      [d.argument.new('probes', d.T.array)],
    ),
    withProbes(probes):
      forProvider.withProbes(probes),

    '#withLabels': d.func.new(
      |||
        `withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.

        Parameters:
        - `labels`: Labels object to add to the check
      |||,
      [d.argument.new('labels', d.T.object)]
    ),
    withLabels(labels):
      forProvider.withLabels(labels),

    '#withHttpSettings': d.func.new(
      |||
        `withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

        The `http` object can be created with `check.settings.http.new()`.

        Parameters:
        - `httpSettings`: HTTP settings object to override defaults
      |||,
      [d.argument.new('http', d.T.object)]
    ),
    withHttpSettings(http):
      forProvider.withSettings(
        forProvider.settings.withHttp(http)
      ),

    '#withHttpStatusCheck': d.func.new(
      |||
        `withHttpStatusCheck` configures a simple HTTP status check for the target URL.
      |||,
      [d.argument.new('validStatusCodes', d.T.array, default=[200])]
    ),
    withHttpStatusCheck(validStatusCodes=[200]):
      self.withHttpSettings(self.settings.http.new(validStatusCodes)),

    settings: {
      http:
        forProvider.settings.http
        + {
          '#new': d.func.new(
            |||
              `new` provides the settings for a HTTP check.
            |||,
            [d.argument.new('validStatusCodes', d.T.array, default=[200])]
          ),
          new(validStatusCodes=[200]):
            self.withValidStatusCodes(validStatusCodes)
            + self.withFailIfSsl(false)
            + self.withFailIfNotSsl(true)
            + self.withNoFollowRedirects(true)
            + self.withMethod('GET'),
        },
    },
  },
}
