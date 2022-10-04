# ClusterLogsInstances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the MongoDB instance. | [optional] |
| **messages** | [**Array&lt;ClusterLogsMessages&gt;**](ClusterLogsMessages.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::ClusterLogsInstances.new(
  name: mongodb-cluster-0,
  messages: null
)
```

