# CreateClusterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Metadata**](Metadata.md) |  | [optional] |
| **properties** | [**CreateClusterProperties**](CreateClusterProperties.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::CreateClusterRequest.new(
  metadata: null,
  properties: null
)
```

