# UserMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Time** | The date the resource was created. | [optional] |
| **created_by** | **String** | The user who created the resource. | [optional] |
| **created_by_user_id** | **String** | The ID of the user who created the resource. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::UserMetadata.new(
  created_date: 2020-12-10T13:37:50+01:00,
  created_by: john.doe@example.com,
  created_by_user_id: 87f9a82e-b28d-49ed-9d04-fba2c0459cd3
)
```

