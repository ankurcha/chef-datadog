include_recipe "datadog::dd-agent"

# Monitor tokumx
#
# node.set['datadog']['tokumx']['instances'] = [
#   {
#     'host' => 'localhost',
#     'port' => '27017',
#     'dbname' => 'admin',
#   }
# ]

datadog_monitor "tokumx" do
  instances node["datadog"]["tokumx"]["instances"]
end
