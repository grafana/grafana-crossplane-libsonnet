{
  accessPolicy+: import './accessPolicy/main.libsonnet',
  accessPolicyToken+: import './accessPolicyToken/main.libsonnet',
  pluginInstallation+: import './pluginInstallation/main.libsonnet',
  stack+: import './stack/main.libsonnet',
  stackServiceAccount+: import './stackServiceAccount/main.libsonnet',
  stackServiceAccountToken+: import './stackServiceAccountToken/main.libsonnet',
}
