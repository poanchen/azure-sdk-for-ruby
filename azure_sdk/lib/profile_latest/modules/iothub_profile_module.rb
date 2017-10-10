# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_hub'

module Azure::Profiles::Management::Profile_Latest
  module IotHub
    Operations = Azure::ARM::IotHub::Api_2017_07_01::Operations
    IotHubResource = Azure::ARM::IotHub::Api_2017_07_01::IotHubResource

    module Models
      SharedAccessSignatureAuthorizationRuleListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
      SharedAccessSignatureAuthorizationRule = Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRule
      OperationDisplay = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationDisplay
      EventHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubProperties
      Operation = Azure::ARM::IotHub::Api_2017_07_01::Models::Operation
      RoutingServiceBusTopicEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
      OperationListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationListResult
      RoutingStorageContainerProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingStorageContainerProperties
      ErrorDetails = Azure::ARM::IotHub::Api_2017_07_01::Models::ErrorDetails
      RouteProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RouteProperties
      IotHubQuotaMetricInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfo
      RoutingProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingProperties
      IotHubQuotaMetricInfoListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfoListResult
      MessagingEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::MessagingEndpointProperties
      RegistryStatistics = Azure::ARM::IotHub::Api_2017_07_01::Models::RegistryStatistics
      CloudToDeviceProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::CloudToDeviceProperties
      JobResponse = Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponse
      IotHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubProperties
      JobResponseListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponseListResult
      IotHubCapacity = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubCapacity
      RoutingServiceBusQueueEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
      IotHubSkuDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescription
      RoutingEndpoints = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEndpoints
      EventHubConsumerGroupsListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupsListResult
      StorageEndpointProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::StorageEndpointProperties
      EventHubConsumerGroupInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupInfo
      OperationsMonitoringProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationsMonitoringProperties
      IotHubSkuDescriptionListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescriptionListResult
      IpFilterRule = Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterRule
      IotHubDescriptionListResult = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescriptionListResult
      FallbackRouteProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::FallbackRouteProperties
      OperationInputs = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationInputs
      IotHubSkuInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuInfo
      IotHubNameAvailabilityInfo = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameAvailabilityInfo
      FeedbackProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::FeedbackProperties
      ExportDevicesRequest = Azure::ARM::IotHub::Api_2017_07_01::Models::ExportDevicesRequest
      RoutingEventHubProperties = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEventHubProperties
      ImportDevicesRequest = Azure::ARM::IotHub::Api_2017_07_01::Models::ImportDevicesRequest
      IotHubDescription = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescription
      AccessRights = Azure::ARM::IotHub::Api_2017_07_01::Models::AccessRights
      IpFilterActionType = Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterActionType
      RoutingSource = Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingSource
      OperationMonitoringLevel = Azure::ARM::IotHub::Api_2017_07_01::Models::OperationMonitoringLevel
      Capabilities = Azure::ARM::IotHub::Api_2017_07_01::Models::Capabilities
      IotHubSku = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSku
      IotHubSkuTier = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuTier
      JobType = Azure::ARM::IotHub::Api_2017_07_01::Models::JobType
      JobStatus = Azure::ARM::IotHub::Api_2017_07_01::Models::JobStatus
      IotHubScaleType = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubScaleType
      IotHubNameUnavailabilityReason = Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameUnavailabilityReason
    end

    #
    # IotHub
    #
    class IotHubClass
      attr_reader :operations, :iot_hub_resource, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::IotHub::Api_2017_07_01::IotHubClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @operations = client.operations
        @iot_hub_resource = client.iot_hub_resource
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object based on the version
      # If the version is invalid, an exception is raised
      #
      # @param version [String] The version of the required
      # client object.
      #
      # @return Client object
      #
      def get_client(version = '2017-07-01')
        case version
          when '2017-07-01'
            client = Azure::ARM::IotHub::Api_2017_07_01::IotHubClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def shared_access_signature_authorization_rule_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRuleListResult
        end
        def shared_access_signature_authorization_rule
          Azure::ARM::IotHub::Api_2017_07_01::Models::SharedAccessSignatureAuthorizationRule
        end
        def operation_display
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationDisplay
        end
        def event_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubProperties
        end
        def operation
          Azure::ARM::IotHub::Api_2017_07_01::Models::Operation
        end
        def routing_service_bus_topic_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusTopicEndpointProperties
        end
        def operation_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationListResult
        end
        def routing_storage_container_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingStorageContainerProperties
        end
        def error_details
          Azure::ARM::IotHub::Api_2017_07_01::Models::ErrorDetails
        end
        def route_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RouteProperties
        end
        def iot_hub_quota_metric_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfo
        end
        def routing_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingProperties
        end
        def iot_hub_quota_metric_info_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubQuotaMetricInfoListResult
        end
        def messaging_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::MessagingEndpointProperties
        end
        def registry_statistics
          Azure::ARM::IotHub::Api_2017_07_01::Models::RegistryStatistics
        end
        def cloud_to_device_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::CloudToDeviceProperties
        end
        def job_response
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponse
        end
        def iot_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubProperties
        end
        def job_response_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobResponseListResult
        end
        def iot_hub_capacity
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubCapacity
        end
        def routing_service_bus_queue_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingServiceBusQueueEndpointProperties
        end
        def iot_hub_sku_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescription
        end
        def routing_endpoints
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEndpoints
        end
        def event_hub_consumer_groups_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupsListResult
        end
        def storage_endpoint_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::StorageEndpointProperties
        end
        def event_hub_consumer_group_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::EventHubConsumerGroupInfo
        end
        def operations_monitoring_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationsMonitoringProperties
        end
        def iot_hub_sku_description_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuDescriptionListResult
        end
        def ip_filter_rule
          Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterRule
        end
        def iot_hub_description_list_result
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescriptionListResult
        end
        def fallback_route_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::FallbackRouteProperties
        end
        def operation_inputs
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationInputs
        end
        def iot_hub_sku_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuInfo
        end
        def iot_hub_name_availability_info
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameAvailabilityInfo
        end
        def feedback_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::FeedbackProperties
        end
        def export_devices_request
          Azure::ARM::IotHub::Api_2017_07_01::Models::ExportDevicesRequest
        end
        def routing_event_hub_properties
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingEventHubProperties
        end
        def import_devices_request
          Azure::ARM::IotHub::Api_2017_07_01::Models::ImportDevicesRequest
        end
        def iot_hub_description
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubDescription
        end
        def access_rights
          Azure::ARM::IotHub::Api_2017_07_01::Models::AccessRights
        end
        def ip_filter_action_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::IpFilterActionType
        end
        def routing_source
          Azure::ARM::IotHub::Api_2017_07_01::Models::RoutingSource
        end
        def operation_monitoring_level
          Azure::ARM::IotHub::Api_2017_07_01::Models::OperationMonitoringLevel
        end
        def capabilities
          Azure::ARM::IotHub::Api_2017_07_01::Models::Capabilities
        end
        def iot_hub_sku
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSku
        end
        def iot_hub_sku_tier
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubSkuTier
        end
        def job_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobType
        end
        def job_status
          Azure::ARM::IotHub::Api_2017_07_01::Models::JobStatus
        end
        def iot_hub_scale_type
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubScaleType
        end
        def iot_hub_name_unavailability_reason
          Azure::ARM::IotHub::Api_2017_07_01::Models::IotHubNameUnavailabilityReason
        end
      end
    end
  end
end