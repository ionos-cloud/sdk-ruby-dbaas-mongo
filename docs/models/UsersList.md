# UsersList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ResourceType**](ResourceType.md) |  | [optional] |
| **id** | **String** | The unique ID of the resource. | [optional] |
| **items** | [**Array&lt;User&gt;**](User.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::UsersList.new(
  type: null,
  id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  items: null
)
```

