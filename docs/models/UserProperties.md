# UserProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **password** | **String** |  |  |
| **roles** | [**Array&lt;UserRoles&gt;**](UserRoles.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::UserProperties.new(
  username: null,
  password: null,
  roles: null
)
```

