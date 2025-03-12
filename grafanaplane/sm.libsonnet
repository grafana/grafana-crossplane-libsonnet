local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import './zz/main.libsonnet';

{
  '#': d.package.newSub('sm', ''),

  check: {
    local forProvider = raw.sm.v1alpha1.check.spec.parameters.forProvider,

    // TODO: Probe IDs hardcoded for now, look into ways to get them from API in Crossplane. Observe-only resource for the probes datasource?
    local fullProbeList = [1, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 756, 757, 853, 854, 855, 856, 867],
    local shortProbeList = [7, 856, 867],  // Paris, North Virginia, Seoul (all AWS)

    '#new': d.func.new(
      |||
        `new` configures a synthetic monitoring check.

        Note: The probe list will match a short list of just three nodes across the globe.
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('type', d.T.string),
      ]
    ),
    new(name, job, url):
      local slug = xtd.ascii.stringToRFC1123(name);
      raw.sm.v1alpha1.check.new(slug)
      + forProvider.withJob(job)
      + forProvider.withTarget(url)
      + forProvider.withProbes(shortProbeList)
      + forProvider.withEnabled(true)
      + forProvider.withAlertSensitivity('high')
      + forProvider.withBasicMetricsOnly(true)
      + forProvider.withFrequency(60000)  // ms
      + forProvider.withTimeout(10000),  // ms

    '#withProbes': d.func.new(
      |||
        `withProbes` takes a list of probe location IDs where the target will be checked from.
      |||,
      [d.argument.new('probes', d.T.array)],
    ),
    withProbes(probes):
      forProvider.withProbes(probes),

    '#withFullProbeList': d.func.new(
      |||
        `withFullProbeList` sets the `probes` array to match the fulll list of probes.

        Note: Probe IDs hardcoded for now.
      |||,
      [d.argument.new('probes', d.T.array, fullProbeList)],
    ),
    withFullProbeList(probes=fullProbeList):
      self.withProbes(probes),

    '#withLabels': d.func.new(
      |||
        `withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.
      |||,
      [d.argument.new('labels', d.T.object)]
    ),
    withLabels(labels):
      forProvider.withLabels(labels),

    '#withHttpSettings': d.func.new(
      |||
        `withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

        The `http` object can be created with `check.settings.http.new()`.
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
