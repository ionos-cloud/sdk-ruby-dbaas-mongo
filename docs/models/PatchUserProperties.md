# PatchUserProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** |  | [optional] |
| **roles** | [**Array&lt;UserRoles&gt;**](UserRoles.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::PatchUserProperties.new(
  password: null,
  roles: null
)
```

