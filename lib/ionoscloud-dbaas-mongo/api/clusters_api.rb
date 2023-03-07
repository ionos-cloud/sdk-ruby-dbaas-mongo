=begin
#IONOS DBaaS MongoDB REST API

#With IONOS Cloud Database as a Service, you have the ability to quickly set up and manage a MongoDB database. You can also delete clusters, manage backups and users via the API.  MongoDB is an open source, cross-platform, document-oriented database program. Classified as a NoSQL database program, it uses JSON-like documents with optional schemas.  The MongoDB API allows you to create additional database clusters or modify existing ones. Both tools, the Data Center Designer (DCD) and the API use the same concepts consistently and are well suited for smooth and intuitive use. 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module IonoscloudDbaasMongo
  class ClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Cluster
    # Deletes a MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [ClusterResponse]
    def clusters_delete(cluster_id, opts = {})
      data, _status_code, _headers = clusters_delete_with_http_info(cluster_id, opts)
      data
    end

    # Delete a Cluster
    # Deletes a MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterResponse, Integer, Hash)>] ClusterResponse data, response status code and response headers
    def clusters_delete_with_http_info(cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_delete ...'
      end
      # verify the required parameter 'cluster_id' is set
      if @api_client.config.client_side_validation && cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_id' when calling ClustersApi.clusters_delete"
      end
      # resource path
      local_var_path = '/clusters/{clusterId}'.sub('{' + 'clusterId' + '}', CGI.escape(cluster_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClusterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a cluster by id
    # Get a cluster by id.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [ClusterResponse]
    def clusters_find_by_id(cluster_id, opts = {})
      data, _status_code, _headers = clusters_find_by_id_with_http_info(cluster_id, opts)
      data
    end

    # Get a cluster by id
    # Get a cluster by id.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterResponse, Integer, Hash)>] ClusterResponse data, response status code and response headers
    def clusters_find_by_id_with_http_info(cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_find_by_id ...'
      end
      # verify the required parameter 'cluster_id' is set
      if @api_client.config.client_side_validation && cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_id' when calling ClustersApi.clusters_find_by_id"
      end
      # resource path
      local_var_path = '/clusters/{clusterId}'.sub('{' + 'clusterId' + '}', CGI.escape(cluster_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClusterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Clusters
    # Retrieves a list of MongoDB clusters.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of elements to return. Use together with &#39;offset&#39; for pagination. (default to 100)
    # @option opts [Integer] :offset The first element to return. Use together with &#39;limit&#39; for pagination. (default to 0)
    # @option opts [String] :filter_name Response filter to list only the MongoDB clusters that contain the specified name. The value is case insensitive and matched on the &#39;displayName&#39; field. 
    # @return [ClusterList]
    def clusters_get(opts = {})
      data, _status_code, _headers = clusters_get_with_http_info(opts)
      data
    end

    # Get Clusters
    # Retrieves a list of MongoDB clusters.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximum number of elements to return. Use together with &#39;offset&#39; for pagination.
    # @option opts [Integer] :offset The first element to return. Use together with &#39;limit&#39; for pagination.
    # @option opts [String] :filter_name Response filter to list only the MongoDB clusters that contain the specified name. The value is case insensitive and matched on the &#39;displayName&#39; field. 
    # @return [Array<(ClusterList, Integer, Hash)>] ClusterList data, response status code and response headers
    def clusters_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClustersApi.clusters_get, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ClustersApi.clusters_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/clusters'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter.name'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ClusterList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch a cluster
    # Patch attributes of a MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param patch_cluster_request [PatchClusterRequest] Part of the cluster which should be modified.
    # @param [Hash] opts the optional parameters
    # @return [ClusterResponse]
    def clusters_patch(cluster_id, patch_cluster_request, opts = {})
      data, _status_code, _headers = clusters_patch_with_http_info(cluster_id, patch_cluster_request, opts)
      data
    end

    # Patch a cluster
    # Patch attributes of a MongoDB cluster.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param patch_cluster_request [PatchClusterRequest] Part of the cluster which should be modified.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterResponse, Integer, Hash)>] ClusterResponse data, response status code and response headers
    def clusters_patch_with_http_info(cluster_id, patch_cluster_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_patch ...'
      end
      # verify the required parameter 'cluster_id' is set
      if @api_client.config.client_side_validation && cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_id' when calling ClustersApi.clusters_patch"
      end
      # verify the required parameter 'patch_cluster_request' is set
      if @api_client.config.client_side_validation && patch_cluster_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_cluster_request' when calling ClustersApi.clusters_patch"
      end
      # resource path
      local_var_path = '/clusters/{clusterId}'.sub('{' + 'clusterId' + '}', CGI.escape(cluster_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_cluster_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ClusterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Cluster
    # Creates a new MongoDB cluster. 
    # @param create_cluster_request [CreateClusterRequest] The cluster to be created.
    # @param [Hash] opts the optional parameters
    # @return [ClusterResponse]
    def clusters_post(create_cluster_request, opts = {})
      data, _status_code, _headers = clusters_post_with_http_info(create_cluster_request, opts)
      data
    end

    # Create a Cluster
    # Creates a new MongoDB cluster. 
    # @param create_cluster_request [CreateClusterRequest] The cluster to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterResponse, Integer, Hash)>] ClusterResponse data, response status code and response headers
    def clusters_post_with_http_info(create_cluster_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_post ...'
      end
      # verify the required parameter 'create_cluster_request' is set
      if @api_client.config.client_side_validation && create_cluster_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_cluster_request' when calling ClustersApi.clusters_post"
      end
      # resource path
      local_var_path = '/clusters'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_cluster_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ClusterResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
