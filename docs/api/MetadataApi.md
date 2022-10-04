# MetadataApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**infos_version_get**](MetadataApi.md#infos_version_get) | **GET** /infos/version | Get API Version |
| [**infos_versions_get**](MetadataApi.md#infos_versions_get) | **GET** /infos/versions | Get All API Versions |


## infos_version_get

> <APIVersion> infos_version_get

Get API Version

Retrieves the current version of the responding API.

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

api_instance = IonoscloudDbaasMongo::MetadataApi.new

begin
  # Get API Version
  result = api_instance.infos_version_get
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling MetadataApi->infos_version_get: #{e}"
end
```

#### Using the infos_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIVersion>, Integer, Hash)> infos_version_get_with_http_info

```ruby
begin
  # Get API Version
  data, status_code, headers = api_instance.infos_version_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIVersion>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling MetadataApi->infos_version_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**APIVersion**](APIVersion.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## infos_versions_get

> <Array<APIVersion>> infos_versions_get

Get All API Versions

Retrieves all available versions of the responding API.

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

api_instance = IonoscloudDbaasMongo::MetadataApi.new

begin
  # Get All API Versions
  result = api_instance.infos_versions_get
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling MetadataApi->infos_versions_get: #{e}"
end
```

#### Using the infos_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<APIVersion>>, Integer, Hash)> infos_versions_get_with_http_info

```ruby
begin
  # Get All API Versions
  data, status_code, headers = api_instance.infos_versions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<APIVersion>>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling MetadataApi->infos_versions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;APIVersion&gt;**](APIVersion.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

