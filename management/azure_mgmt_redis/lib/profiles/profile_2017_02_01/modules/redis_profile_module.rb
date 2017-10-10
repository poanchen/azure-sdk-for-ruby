# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Redis::Management::Profile_2017_02_01
    Redis = Azure::ARM::Redis::Api_2017_02_01::Redis
    PatchSchedules = Azure::ARM::Redis::Api_2017_02_01::PatchSchedules
    RedisLinkedServerOperations = Azure::ARM::Redis::Api_2017_02_01::RedisLinkedServerOperations

    module Models
      RedisRegenerateKeyParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisRegenerateKeyParameters
      Sku = Azure::ARM::Redis::Api_2017_02_01::Models::Sku
      RedisRebootParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisRebootParameters
      ExportRDBParameters = Azure::ARM::Redis::Api_2017_02_01::Models::ExportRDBParameters
      RedisUpdateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisUpdateParameters
      ImportRDBParameters = Azure::ARM::Redis::Api_2017_02_01::Models::ImportRDBParameters
      RedisLinkedServer = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServer
      ScheduleEntry = Azure::ARM::Redis::Api_2017_02_01::Models::ScheduleEntry
      RedisListResult = Azure::ARM::Redis::Api_2017_02_01::Models::RedisListResult
      RedisPatchSchedule = Azure::ARM::Redis::Api_2017_02_01::Models::RedisPatchSchedule
      RedisLinkedServerCreateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerCreateParameters
      RedisAccessKeys = Azure::ARM::Redis::Api_2017_02_01::Models::RedisAccessKeys
      RedisForceRebootResponse = Azure::ARM::Redis::Api_2017_02_01::Models::RedisForceRebootResponse
      RedisLinkedServerWithProperties = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithProperties
      RedisLinkedServerList = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerList
      RedisLinkedServerWithPropertiesList = Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithPropertiesList
      RedisCreateParameters = Azure::ARM::Redis::Api_2017_02_01::Models::RedisCreateParameters
      RedisResource = Azure::ARM::Redis::Api_2017_02_01::Models::RedisResource
      SkuName = Azure::ARM::Redis::Api_2017_02_01::Models::SkuName
      SkuFamily = Azure::ARM::Redis::Api_2017_02_01::Models::SkuFamily
      RedisKeyType = Azure::ARM::Redis::Api_2017_02_01::Models::RedisKeyType
      RebootType = Azure::ARM::Redis::Api_2017_02_01::Models::RebootType
      DayOfWeek = Azure::ARM::Redis::Api_2017_02_01::Models::DayOfWeek
      ReplicationRole = Azure::ARM::Redis::Api_2017_02_01::Models::ReplicationRole
    end

    #
    # Redis
    #
    class RedisClass
      attr_reader :redis, :patch_schedules, :redis_linked_server_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Redis::Api_2017_02_01::RedisManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @redis = client.redis
        @patch_schedules = client.patch_schedules
        @redis_linked_server_operations = client.redis_linked_server_operations
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Redis::Api_2017_02_01::RedisManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def redis_regenerate_key_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisRegenerateKeyParameters
        end
        def sku
          Azure::ARM::Redis::Api_2017_02_01::Models::Sku
        end
        def redis_reboot_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisRebootParameters
        end
        def export_rdbparameters
          Azure::ARM::Redis::Api_2017_02_01::Models::ExportRDBParameters
        end
        def redis_update_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisUpdateParameters
        end
        def import_rdbparameters
          Azure::ARM::Redis::Api_2017_02_01::Models::ImportRDBParameters
        end
        def redis_linked_server
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServer
        end
        def schedule_entry
          Azure::ARM::Redis::Api_2017_02_01::Models::ScheduleEntry
        end
        def redis_list_result
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisListResult
        end
        def redis_patch_schedule
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisPatchSchedule
        end
        def redis_linked_server_create_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerCreateParameters
        end
        def redis_access_keys
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisAccessKeys
        end
        def redis_force_reboot_response
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisForceRebootResponse
        end
        def redis_linked_server_with_properties
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithProperties
        end
        def redis_linked_server_list
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerList
        end
        def redis_linked_server_with_properties_list
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisLinkedServerWithPropertiesList
        end
        def redis_create_parameters
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisCreateParameters
        end
        def redis_resource
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisResource
        end
        def sku_name
          Azure::ARM::Redis::Api_2017_02_01::Models::SkuName
        end
        def sku_family
          Azure::ARM::Redis::Api_2017_02_01::Models::SkuFamily
        end
        def redis_key_type
          Azure::ARM::Redis::Api_2017_02_01::Models::RedisKeyType
        end
        def reboot_type
          Azure::ARM::Redis::Api_2017_02_01::Models::RebootType
        end
        def day_of_week
          Azure::ARM::Redis::Api_2017_02_01::Models::DayOfWeek
        end
        def replication_role
          Azure::ARM::Redis::Api_2017_02_01::Models::ReplicationRole
        end
      end
    end
end