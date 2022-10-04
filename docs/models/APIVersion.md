# APIVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **swagger_url** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::APIVersion.new(
  name: v2.1,
  swagger_url: https://api.ionos.com/databases/mongodb/infos/assets/swagger-v2.1.yml
)
```

