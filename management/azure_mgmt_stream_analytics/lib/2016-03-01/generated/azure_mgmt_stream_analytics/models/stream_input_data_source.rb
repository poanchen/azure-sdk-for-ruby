# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes an input data source that contains stream data.
    #
    class StreamInputDataSource

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.Devices/IotHubs"] = "IoTHubStreamInputDataSource"
      @@discriminatorMap["Microsoft.ServiceBus/EventHub"] = "EventHubStreamInputDataSource"
      @@discriminatorMap["Microsoft.Storage/Blob"] = "BlobStreamInputDataSource"

      def initialize
        @type = "StreamInputDataSource"
      end

      attr_accessor :type


      #
      # Mapper for StreamInputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamInputDataSource',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'StreamInputDataSource',
            class_name: 'StreamInputDataSource',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
