# ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **http_status** | **Integer** | The HTTP status code of the operation. | [optional] |
| **messages** | [**Array&lt;ErrorMessage&gt;**](ErrorMessage.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::ErrorResponse.new(
  http_status: 400,
  messages: null
)
```

