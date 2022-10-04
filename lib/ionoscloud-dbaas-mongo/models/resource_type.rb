=begin
#IONOS DBaaS MongoDB REST API

#With IONOS Cloud Database as a Service, you have the ability to quickly set up and manage a MongoDB database. You can also delete clusters, manage backups and users via the API.   MongoDB is an open source, cross-platform, document-oriented database program. Classified as a NoSQL database program, it uses JSON-like documents with optional schemas.  The MongoDB API allows you to create additional database clusters or modify existing ones. Both tools, the Data Center Designer (DCD) and the API use the same concepts consistently and are well suited for smooth and intuitive use. 

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module IonoscloudDbaasMongo
  class ResourceType
    COLLECTION = "collection".freeze
    CLUSTER = "cluster".freeze
    USER = "user".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ResourceType.constants.select { |c| ResourceType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ResourceType" if constantValues.empty?
      value
    end
  end
end
