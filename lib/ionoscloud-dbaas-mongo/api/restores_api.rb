=begin
#IONOS DBaaS MongoDB REST API

#With IONOS Cloud Database as a Service, you have the ability to quickly set up and manage a MongoDB database. You can also delete clusters, manage backups and users via the API.   MongoDB is an open source, cross-platform, document-oriented database program. Classified as a NoSQL database program, it uses JSON-like documents with optional schemas.  The MongoDB API allows you to create additional database clusters or modify existing ones. Both tools, the Data Center Designer (DCD) and the API use the same concepts consistently and are well suited for smooth and intuitive use. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module IonoscloudDbaasMongo
  class RestoresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # In-place restore of a cluster
    # Triggers an in-place restore of the given MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param create_restore_request [CreateRestoreRequest] The restore request to create.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def clusters_restore_post(cluster_id, create_restore_request, opts = {})
      clusters_restore_post_with_http_info(cluster_id, create_restore_request, opts)
      nil
    end

    # In-place restore of a cluster
    # Triggers an in-place restore of the given MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param create_restore_request [CreateRestoreRequest] The restore request to create.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def clusters_restore_post_with_http_info(cluster_id, create_restore_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestoresApi.clusters_restore_post ...'
      end
      # verify the required parameter 'cluster_id' is set
      if @api_client.config.client_side_validation && cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_id' when calling RestoresApi.clusters_restore_post"
      end
      # verify the required parameter 'create_restore_request' is set
      if @api_client.config.client_side_validation && create_restore_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_restore_request' when calling RestoresApi.clusters_restore_post"
      end
      # resource path
      local_var_path = '/clusters/{clusterId}/restore'.sub('{' + 'clusterId' + '}', CGI.escape(cluster_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_restore_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"RestoresApi.clusters_restore_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestoresApi#clusters_restore_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
