# ClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name of your cluster. | [optional] |
| **mongo_db_version** | **String** | The MongoDB version of your cluster. | [optional] |
| **location** | **String** | The physical location where the cluster will be created. This is the location where all your instances will be located. This property is immutable.  | [optional] |
| **instances** | **Integer** | The total number of instances in the cluster (one primary and n-1 secondaries).  | [optional] |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **template_id** | **String** | The unique ID of the template, which specifies the number of cores, storage size, and memory.  | [optional] |
| **connection_string** | **String** | The connection string for your cluster. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::ClusterProperties.new(
  display_name: MongoDB cluster,
  mongo_db_version: 5.0,
  location: de/txl,
  instances: 3,
  connections: null,
  maintenance_window: null,
  template_id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  connection_string: mongo+srv://m-498ae72f-411f-11eb-9d07-046c59cc737e.mongodb.de-txl.ionos.com
)
```

