# SnapshotsApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_snapshots_get**](SnapshotsApi.md#clusters_snapshots_get) | **GET** /clusters/{clusterId}/snapshots | Get the snapshots of your cluster |


## clusters_snapshots_get

> <SnapshotList> clusters_snapshots_get(cluster_id)

Get the snapshots of your cluster

Retrieves MongoDB snapshots.

### Examples

```ruby
require 'time'
require 'ionoscloud-dbaas-mongo'
# setup authorization
IonoscloudDbaasMongo.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IonoscloudDbaasMongo::SnapshotsApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # Get the snapshots of your cluster
  result = api_instance.clusters_snapshots_get(cluster_id)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling SnapshotsApi->clusters_snapshots_get: #{e}"
end
```

#### Using the clusters_snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotList>, Integer, Hash)> clusters_snapshots_get_with_http_info(cluster_id)

```ruby
begin
  # Get the snapshots of your cluster
  data, status_code, headers = api_instance.clusters_snapshots_get_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotList>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling SnapshotsApi->clusters_snapshots_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**SnapshotList**](SnapshotList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

