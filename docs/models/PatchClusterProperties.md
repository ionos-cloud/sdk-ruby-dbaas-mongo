# PatchClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name of your cluster. | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **instances** | **Integer** | The total number of instances in the cluster (one primary and n-1 secondaries).  | [optional] |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  | [optional] |
| **template_id** | **String** | The unique ID of the template, which specifies the number of cores, storage size, and memory. You cannot downgrade to a smaller template or minor edition (e.g. from business to playground). To get a list of all templates to confirm the changes use the /templates endpoint.  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::PatchClusterProperties.new(
  display_name: MongoDB cluster,
  maintenance_window: null,
  instances: 3,
  connections: null,
  template_id: 498ae72f-411f-11eb-9d07-046c59cc737e
)
```

