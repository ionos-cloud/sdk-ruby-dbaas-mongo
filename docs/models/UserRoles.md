# UserRoles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** |  | [optional] |
| **database** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::UserRoles.new(
  role: read,
  database: null
)
```

