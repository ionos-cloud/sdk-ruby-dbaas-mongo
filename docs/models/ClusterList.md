# ClusterList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ResourceType**](ResourceType.md) |  | [optional] |
| **id** | **String** | The unique ID of the resource. | [optional] |
| **items** | [**Array&lt;ClusterResponse&gt;**](ClusterResponse.md) |  | [optional] |
| **offset** | **Integer** | The offset specified in the request (if none was specified, the default offset is 0).  | [optional][default to 0] |
| **limit** | **Integer** | The limit specified in the request (if none was specified, the default limit is 100).  | [optional][default to 100] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::ClusterList.new(
  type: null,
  id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  items: null,
  offset: 200,
  limit: 100,
  links: null
)
```

