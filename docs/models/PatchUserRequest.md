# PatchUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**UserMetadata**](UserMetadata.md) |  | [optional] |
| **properties** | [**PatchUserProperties**](PatchUserProperties.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::PatchUserRequest.new(
  metadata: null,
  properties: null
)
```

