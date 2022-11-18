# Connection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The datacenter to which your cluster will be connected. |  |
| **lan_id** | **String** | The numeric LAN ID with which you connect your cluster. |  |
| **cidr_list** | **Array&lt;String&gt;** | The list of IPs for your cluster. All IPs must be in a /24 network. Note the following unavailable IP ranges: 10.233.114.0/24  |  |

## Example

```ruby
require 'ionoscloud-dbaas-mongo'

instance = IonoscloudDbaasMongo::Connection.new(
  datacenter_id: 5a029f4a-72e5-11ec-90d6-0242ac120003,
  lan_id: 2,
  cidr_list: ["192.168.1.100/24","192.168.1.101/24"]
)
```

