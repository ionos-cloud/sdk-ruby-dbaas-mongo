# SnapshotProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The MongoDB version this backup was created from. | [optional] |
| **size** | **Integer** | The size of the snapshot in Mebibytes. | [optional] |
| **creation_time** | **Time** | The date the resource was created. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::SnapshotProperties.new(
  version: 5.0,
  size: 150,
  creation_time: 2020-12-10T13:37:50+01:00
)
```

