=begin
#IONOS DBaaS MongoDB REST API

#With IONOS Cloud Database as a Service, you have the ability to quickly set up and manage a MongoDB database. You can also delete clusters, manage backups and users via the API.   MongoDB is an open source, cross-platform, document-oriented database program. Classified as a NoSQL database program, it uses JSON-like documents with optional schemas.  The MongoDB API allows you to create additional database clusters or modify existing ones. Both tools, the Data Center Designer (DCD) and the API use the same concepts consistently and are well suited for smooth and intuitive use. 

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

# Common files
require 'ionoscloud-dbaas-mongo/api_client'
require 'ionoscloud-dbaas-mongo/api_error'
require 'ionoscloud-dbaas-mongo/version'
require 'ionoscloud-dbaas-mongo/configuration'

# Models
require 'ionoscloud-dbaas-mongo/models/api_version'
require 'ionoscloud-dbaas-mongo/models/cluster_list'
require 'ionoscloud-dbaas-mongo/models/cluster_list_all_of'
require 'ionoscloud-dbaas-mongo/models/cluster_logs'
require 'ionoscloud-dbaas-mongo/models/cluster_logs_instances'
require 'ionoscloud-dbaas-mongo/models/cluster_logs_messages'
require 'ionoscloud-dbaas-mongo/models/cluster_properties'
require 'ionoscloud-dbaas-mongo/models/cluster_response'
require 'ionoscloud-dbaas-mongo/models/connection'
require 'ionoscloud-dbaas-mongo/models/create_cluster_properties'
require 'ionoscloud-dbaas-mongo/models/create_cluster_request'
require 'ionoscloud-dbaas-mongo/models/create_restore_request'
require 'ionoscloud-dbaas-mongo/models/day_of_the_week'
require 'ionoscloud-dbaas-mongo/models/error_message'
require 'ionoscloud-dbaas-mongo/models/error_response'
require 'ionoscloud-dbaas-mongo/models/maintenance_window'
require 'ionoscloud-dbaas-mongo/models/metadata'
require 'ionoscloud-dbaas-mongo/models/pagination'
require 'ionoscloud-dbaas-mongo/models/pagination_links'
require 'ionoscloud-dbaas-mongo/models/resource_type'
require 'ionoscloud-dbaas-mongo/models/snapshot_list'
require 'ionoscloud-dbaas-mongo/models/snapshot_list_all_of'
require 'ionoscloud-dbaas-mongo/models/snapshot_properties'
require 'ionoscloud-dbaas-mongo/models/snapshot_response'
require 'ionoscloud-dbaas-mongo/models/state'
require 'ionoscloud-dbaas-mongo/models/template_list'
require 'ionoscloud-dbaas-mongo/models/template_list_all_of'
require 'ionoscloud-dbaas-mongo/models/template_response'
require 'ionoscloud-dbaas-mongo/models/user'
require 'ionoscloud-dbaas-mongo/models/user_metadata'
require 'ionoscloud-dbaas-mongo/models/user_properties'
require 'ionoscloud-dbaas-mongo/models/user_roles'
require 'ionoscloud-dbaas-mongo/models/users_list'

# APIs
require 'ionoscloud-dbaas-mongo/api/clusters_api'
require 'ionoscloud-dbaas-mongo/api/logs_api'
require 'ionoscloud-dbaas-mongo/api/metadata_api'
require 'ionoscloud-dbaas-mongo/api/restores_api'
require 'ionoscloud-dbaas-mongo/api/snapshots_api'
require 'ionoscloud-dbaas-mongo/api/templates_api'
require 'ionoscloud-dbaas-mongo/api/users_api'

module IonoscloudDbaasMongo
  class << self
    # Customize default settings for the SDK using block.
    #   IonoscloudDbaasMongo.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
