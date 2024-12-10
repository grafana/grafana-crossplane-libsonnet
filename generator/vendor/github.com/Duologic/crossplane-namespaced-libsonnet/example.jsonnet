local namespaced = import './main.libsonnet';

namespaced.fromCRD(import 'crd.json')
