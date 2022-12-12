=begin
#IONOS DBaaS MongoDB REST API

#With IONOS Cloud Database as a Service, you have the ability to quickly set up and manage a MongoDB database. You can also delete clusters, manage backups and users via the API.   MongoDB is an open source, cross-platform, document-oriented database program. Classified as a NoSQL database program, it uses JSON-like documents with optional schemas.  The MongoDB API allows you to create additional database clusters or modify existing ones. Both tools, the Data Center Designer (DCD) and the API use the same concepts consistently and are well suited for smooth and intuitive use. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module IonoscloudDbaasMongo
  class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get API Version
    # Retrieves the current version of the responding API.
    # @param [Hash] opts the optional parameters
    # @return [APIVersion]
    def infos_version_get(opts = {})
      data, _status_code, _headers = infos_version_get_with_http_info(opts)
      data
    end

    # Get API Version
    # Retrieves the current version of the responding API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIVersion, Integer, Hash)>] APIVersion data, response status code and response headers
    def infos_version_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.infos_version_get ...'
      end
      # resource path
      local_var_path = '/infos/version'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'APIVersion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"MetadataApi.infos_version_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#infos_version_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All API Versions
    # Retrieves all available versions of the responding API.
    # @param [Hash] opts the optional parameters
    # @return [Array<APIVersion>]
    def infos_versions_get(opts = {})
      data, _status_code, _headers = infos_versions_get_with_http_info(opts)
      data
    end

    # Get All API Versions
    # Retrieves all available versions of the responding API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<APIVersion>, Integer, Hash)>] Array<APIVersion> data, response status code and response headers
    def infos_versions_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.infos_versions_get ...'
      end
      # resource path
      local_var_path = '/infos/versions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<APIVersion>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"MetadataApi.infos_versions_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#infos_versions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
