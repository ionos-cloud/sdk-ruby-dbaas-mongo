# TemplatesApi

All URIs are relative to *https://api.ionos.com/databases/mongodb*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**templates_get**](TemplatesApi.md#templates_get) | **GET** /templates | Get Templates |


## templates_get

> <TemplateList> templates_get(opts)

Get Templates

Retrieves a list of valid templates. These templates can be used to create MongoDB clusters; they contain properties, such as number of cores, RAM, and the storage size. 

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

api_instance = IonoscloudDbaasMongo::TemplatesApi.new
opts = {
  limit: 100, # Integer | The maximum number of elements to return. Use together with 'offset' for pagination.
  offset: 200 # Integer | The first element to return. Use together with 'limit' for pagination.
}

begin
  # Get Templates
  result = api_instance.templates_get(opts)
  p result
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling TemplatesApi->templates_get: #{e}"
end
```

#### Using the templates_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateList>, Integer, Hash)> templates_get_with_http_info(opts)

```ruby
begin
  # Get Templates
  data, status_code, headers = api_instance.templates_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateList>
rescue IonoscloudDbaasMongo::ApiError => e
  puts "Error when calling TemplatesApi->templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of elements to return. Use together with &#39;offset&#39; for pagination. | [optional][default to 100] |
| **offset** | **Integer** | The first element to return. Use together with &#39;limit&#39; for pagination. | [optional][default to 0] |

### Return type

[**TemplateList**](../models/TemplateList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

