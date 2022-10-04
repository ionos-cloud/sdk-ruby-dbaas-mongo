# UsersApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_users_delete**](UsersApi.md#clusters_users_delete) | **DELETE** /clusters/{clusterId}/users/{database}/{username} | Delete a MongoDB User by ID |
| [**clusters_users_find_by_id**](UsersApi.md#clusters_users_find_by_id) | **GET** /clusters/{clusterId}/users/{database}/{username} | Get a MongoDB User by ID |
| [**clusters_users_get**](UsersApi.md#clusters_users_get) | **GET** /clusters/{clusterId}/users | Get a Cluster Users |
| [**clusters_users_post**](UsersApi.md#clusters_users_post) | **POST** /clusters/{clusterId}/users | Create MongoDB User |


## clusters_users_delete

> <User> clusters_users_delete(cluster_id, database, username)

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
database = 'database_example' # String | The authentication database.
username = 'username_example' # String | The authentication username.

begin
  # Delete a MongoDB User by ID
  result = api_instance.clusters_users_delete(cluster_id, database, username)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_delete: #{e}"
end
```

#### Using the clusters_users_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_delete_with_http_info(cluster_id, database, username)

```ruby
begin
  # Delete a MongoDB User by ID
  data, status_code, headers = api_instance.clusters_users_delete_with_http_info(cluster_id, database, username)
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
| **database** | **String** | The authentication database. |  |
| **username** | **String** | The authentication username. |  |

### Return type

[**User**](User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_users_find_by_id

> <User> clusters_users_find_by_id(cluster_id, database, username)

Get a MongoDB User by ID

Retrieves the MongoDB user identified by the username and database parameters.

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
database = 'database_example' # String | The authentication database.
username = 'username_example' # String | The authentication username.

begin
  # Get a MongoDB User by ID
  result = api_instance.clusters_users_find_by_id(cluster_id, database, username)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_find_by_id: #{e}"
end
```

#### Using the clusters_users_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> clusters_users_find_by_id_with_http_info(cluster_id, database, username)

```ruby
begin
  # Get a MongoDB User by ID
  data, status_code, headers = api_instance.clusters_users_find_by_id_with_http_info(cluster_id, database, username)
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
| **database** | **String** | The authentication database. |  |
| **username** | **String** | The authentication username. |  |

### Return type

[**User**](User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_users_get

> <UsersList> clusters_users_get(cluster_id)

Get a Cluster Users

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

begin
  # Get a Cluster Users
  result = api_instance.clusters_users_get(cluster_id)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling UsersApi->clusters_users_get: #{e}"
end
```

#### Using the clusters_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersList>, Integer, Hash)> clusters_users_get_with_http_info(cluster_id)

```ruby
begin
  # Get a Cluster Users
  data, status_code, headers = api_instance.clusters_users_get_with_http_info(cluster_id)
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

### Return type

[**UsersList**](UsersList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
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
| **user** | [**User**](User.md) | The user to be created. |  |

### Return type

[**User**](User.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

