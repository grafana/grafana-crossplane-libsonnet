local parser = import './parser.libsonnet';
local file = importstr './parser.libsonnet';
parser.new(file).parse()
