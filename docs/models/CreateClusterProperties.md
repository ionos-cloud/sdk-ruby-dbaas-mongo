# CreateClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The unique ID of the template, which specifies the number of cores, storage size, and memory. You cannot downgrade to a smaller template or minor edition (e.g. from business to playground). To get a list of all templates to confirm the changes use the /templates endpoint.  |  |
| **mongo_db_version** | **String** | The MongoDB version of your cluster. | [optional] |
| **instances** | **Integer** | The total number of instances in the cluster (one primary and n-1 secondaries).  |  |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  |  |
| **location** | **String** | The physical location where the cluster will be created. This is the location where all your instances will be located. This property is immutable.  |  |
| **display_name** | **String** | The name of your cluster. |  |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::CreateClusterProperties.new(
  template_id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  mongo_db_version: 5.0,
  instances: 3,
  connections: null,
  location: de/txl,
  display_name: MongoDB cluster,
  maintenance_window: null
)
```

