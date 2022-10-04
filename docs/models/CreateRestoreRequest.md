# CreateRestoreRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the snapshot you want to restore. |  |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::CreateRestoreRequest.new(
  snapshot_id: dcd31531-3ac8-11eb-9feb-046c59cc737e
)
```

