# UsersApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_users_delete**](UsersApi.md#clusters_users_delete) | **DELETE** /clusters/{clusterId}/users/{username} | Delete a MongoDB User by ID |
| [**clusters_users_find_by_id**](UsersApi.md#clusters_users_find_by_id) | **GET** /clusters/{clusterId}/users/{username} | Get a MongoDB User by ID |
| [**clusters_users_get**](UsersApi.md#clusters_users_get) | **GET** /clusters/{clusterId}/users | Get all Cluster Users |
| [**clusters_users_patch**](UsersApi.md#clusters_users_patch) | **PATCH** /clusters/{clusterId}/users/{username} | Patch a MongoDB User by ID |
| [**clusters_users_post**](UsersApi.md#clusters_users_post) | **POST** /clusters/{clusterId}/users | Create MongoDB User |


## clusters_users_delete

> <User> clusters_users_delete(cluster_id, username)

Delete a MongoDB User by ID

Deletes a MongoDB user specified by its ID.

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

api_instance = IonoscloudDbaasMongo::UsersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
username = 'username_example' # String | The authentication username.

begin
  # Delete a MongoDB User by ID
  result = api_instance.clusters_users_delete(cluster_id, username)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_delete: #{e}"
end
```

#### Using the clusters_users_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_delete_with_http_info(cluster_id, username)

```ruby
begin
  # Delete a MongoDB User by ID
  data, status_code, headers = api_instance.clusters_users_delete_with_http_info(cluster_id, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **username** | **String** | The authentication username. |  |

### Return type

[**User**](../models/User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_users_find_by_id

> <User> clusters_users_find_by_id(cluster_id, username)

Get a MongoDB User by ID

Retrieves the MongoDB user identified by the username.

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

api_instance = IonoscloudDbaasMongo::UsersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
username = 'username_example' # String | The authentication username.

begin
  # Get a MongoDB User by ID
  result = api_instance.clusters_users_find_by_id(cluster_id, username)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_find_by_id: #{e}"
end
```

#### Using the clusters_users_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_find_by_id_with_http_info(cluster_id, username)

```ruby
begin
  # Get a MongoDB User by ID
  data, status_code, headers = api_instance.clusters_users_find_by_id_with_http_info(cluster_id, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **username** | **String** | The authentication username. |  |

### Return type

[**User**](../models/User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_users_get

> <UsersList> clusters_users_get(cluster_id, opts)

Get all Cluster Users

Retrieves a list of MongoDB users.

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

api_instance = IonoscloudDbaasMongo::UsersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
opts = {
  limit: 100, # Integer | The maximum number of elements to return. Use together with 'offset' for pagination.
  offset: 200 # Integer | The first element to return. Use together with 'limit' for pagination.
}

begin
  # Get all Cluster Users
  result = api_instance.clusters_users_get(cluster_id, opts)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_get: #{e}"
end
```

#### Using the clusters_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersList>, Integer, Hash)> clusters_users_get_with_http_info(cluster_id, opts)

```ruby
begin
  # Get all Cluster Users
  data, status_code, headers = api_instance.clusters_users_get_with_http_info(cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersList>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **limit** | **Integer** | The maximum number of elements to return. Use together with &#39;offset&#39; for pagination. | [optional][default to 100] |
| **offset** | **Integer** | The first element to return. Use together with &#39;limit&#39; for pagination. | [optional][default to 0] |

### Return type

[**UsersList**](../models/UsersList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_users_patch

> <User> clusters_users_patch(cluster_id, username, patch_user_request)

Patch a MongoDB User by ID

Patches a MongoDB user specified by its ID.

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

api_instance = IonoscloudDbaasMongo::UsersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
username = 'username_example' # String | The authentication username.
patch_user_request = IonoscloudDbaasMongo::PatchUserRequest.new # PatchUserRequest | Part of the MongoDB user which should be modified.

begin
  # Patch a MongoDB User by ID
  result = api_instance.clusters_users_patch(cluster_id, username, patch_user_request)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_patch: #{e}"
end
```

#### Using the clusters_users_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_patch_with_http_info(cluster_id, username, patch_user_request)

```ruby
begin
  # Patch a MongoDB User by ID
  data, status_code, headers = api_instance.clusters_users_patch_with_http_info(cluster_id, username, patch_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **username** | **String** | The authentication username. |  |
| **patch_user_request** | [**PatchUserRequest**](../models/PatchUserRequest.md) | Part of the MongoDB user which should be modified. |  |

### Return type

[**User**](../models/User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_users_post

> <User> clusters_users_post(cluster_id, user)

Create MongoDB User

Creates a MongoDB user. 

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

api_instance = IonoscloudDbaasMongo::UsersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
user = IonoscloudDbaasMongo::User.new # User | The user to be created.

begin
  # Create MongoDB User
  result = api_instance.clusters_users_post(cluster_id, user)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_post: #{e}"
end
```

#### Using the clusters_users_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_post_with_http_info(cluster_id, user)

```ruby
begin
  # Create MongoDB User
  data, status_code, headers = api_instance.clusters_users_post_with_http_info(cluster_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **user** | [**User**](../models/User.md) | The user to be created. |  |

### Return type

[**User**](../models/User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

