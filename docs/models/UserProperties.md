# UserProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **database** | **String** | The user database to use for authentication. |  |
| **password** | **String** |  |  |
| **roles** | [**Array&lt;UserRoles&gt;**](UserRoles.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::UserProperties.new(
  username: null,
  database: admin,
  password: null,
  roles: null
)
```

