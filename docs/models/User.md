# User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ResourceType**](ResourceType.md) |  | [optional] |
| **metadata** | [**UserMetadata**](UserMetadata.md) |  | [optional] |
| **properties** | [**UserProperties**](UserProperties.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::User.new(
  type: user,
  metadata: null,
  properties: null
)
```

