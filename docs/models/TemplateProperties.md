# TemplateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the template. | [optional] |
| **edition** | **String** | The edition of the template (e.g. enterprise) | [optional] |
| **cores** | **Integer** | The number of CPU cores. | [optional] |
| **ram** | **Integer** | The amount of memory in GB. | [optional] |
| **storage_size** | **Integer** | The amount of storage size in GB. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::TemplateProperties.new(
  name: MongoDB Community 4XL,
  edition: enterprise,
  cores: 1,
  ram: 4,
  storage_size: 30
)
```

