# TemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique template ID. | [optional] |
| **cores** | **Integer** | The number of CPU cores. | [optional] |
| **ram** | **Integer** | The amount of memory in GB. | [optional] |
| **storage_size** | **Integer** | The amount of storage size in GB. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::TemplateResponse.new(
  id: 15c6dd2f-02d2-4987-b439-9a58dd59ecc3,
  cores: 1,
  ram: 4,
  storage_size: 30
)
```

