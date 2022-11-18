# ClustersApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_delete**](ClustersApi.md#clusters_delete) | **DELETE** /clusters/{clusterId} | Delete a Cluster |
| [**clusters_find_by_id**](ClustersApi.md#clusters_find_by_id) | **GET** /clusters/{clusterId} | Get a cluster by id |
| [**clusters_get**](ClustersApi.md#clusters_get) | **GET** /clusters | Get Clusters |
| [**clusters_patch**](ClustersApi.md#clusters_patch) | **PATCH** /clusters/{clusterId} | Patch a cluster |
| [**clusters_post**](ClustersApi.md#clusters_post) | **POST** /clusters | Create a Cluster |


## clusters_delete

> <ClusterResponse> clusters_delete(cluster_id)

Delete a Cluster

Deletes a MongoDB cluster.

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

api_instance = IonoscloudDbaasMongo::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # Delete a Cluster
  result = api_instance.clusters_delete(cluster_id)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete: #{e}"
end
```

#### Using the clusters_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_delete_with_http_info(cluster_id)

```ruby
begin
  # Delete a Cluster
  data, status_code, headers = api_instance.clusters_delete_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_find_by_id

> <ClusterResponse> clusters_find_by_id(cluster_id)

Get a cluster by id

Get a cluster by id.

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

api_instance = IonoscloudDbaasMongo::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # Get a cluster by id
  result = api_instance.clusters_find_by_id(cluster_id)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_find_by_id: #{e}"
end
```

#### Using the clusters_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_find_by_id_with_http_info(cluster_id)

```ruby
begin
  # Get a cluster by id
  data, status_code, headers = api_instance.clusters_find_by_id_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_get

> <ClusterList> clusters_get(opts)

Get Clusters

Retrieves a list of MongoDB clusters.

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

api_instance = IonoscloudDbaasMongo::ClustersApi.new
opts = {
  filter_name: 'filter_name_example' # String | Response filter to list only the MongoDB clusters that contain the specified name. The value is case insensitive and matched on the 'displayName' field. 
}

begin
  # Get Clusters
  result = api_instance.clusters_get(opts)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_get: #{e}"
end
```

#### Using the clusters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterList>, Integer, Hash)> clusters_get_with_http_info(opts)

```ruby
begin
  # Get Clusters
  data, status_code, headers = api_instance.clusters_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterList>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_name** | **String** | Response filter to list only the MongoDB clusters that contain the specified name. The value is case insensitive and matched on the &#39;displayName&#39; field.  | [optional] |

### Return type

[**ClusterList**](ClusterList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_patch

> <ClusterResponse> clusters_patch(cluster_id, patch_cluster_request)

Patch a cluster

Patch attributes of a MongoDB cluster.

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

api_instance = IonoscloudDbaasMongo::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
patch_cluster_request = IonoscloudDbaasMongo::PatchClusterRequest.new # PatchClusterRequest | Part of the cluster which should be modified.

begin
  # Patch a cluster
  result = api_instance.clusters_patch(cluster_id, patch_cluster_request)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_patch: #{e}"
end
```

#### Using the clusters_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_patch_with_http_info(cluster_id, patch_cluster_request)

```ruby
begin
  # Patch a cluster
  data, status_code, headers = api_instance.clusters_patch_with_http_info(cluster_id, patch_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **patch_cluster_request** | [**PatchClusterRequest**](PatchClusterRequest.md) | Part of the cluster which should be modified. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_post

> <ClusterResponse> clusters_post(create_cluster_request)

Create a Cluster

Creates a new MongoDB cluster. 

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

api_instance = IonoscloudDbaasMongo::ClustersApi.new
create_cluster_request = IonoscloudDbaasMongo::CreateClusterRequest.new # CreateClusterRequest | The cluster to be created.

begin
  # Create a Cluster
  result = api_instance.clusters_post(create_cluster_request)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_post: #{e}"
end
```

#### Using the clusters_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_post_with_http_info(create_cluster_request)

```ruby
begin
  # Create a Cluster
  data, status_code, headers = api_instance.clusters_post_with_http_info(create_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling ClustersApi->clusters_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_cluster_request** | [**CreateClusterRequest**](CreateClusterRequest.md) | The cluster to be created. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

