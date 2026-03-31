local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('cloud', ''),
  stack: import './stack.libsonnet',
  stackServiceAccount: import './stackserviceaccount.libsonnet',
  stackServiceAccountToken: import './stackserviceaccounttoken.libsonnet',
  accessPolicy: import './accesspolicy.libsonnet',
  accessPolicyToken: import './accesspolicytoken.libsonnet',
}
