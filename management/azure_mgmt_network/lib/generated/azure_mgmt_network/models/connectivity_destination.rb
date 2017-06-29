# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Parameters that define destination of connection.
    #
    class ConnectivityDestination

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ID of the resource to which a connection attempt
      # will be made.
      attr_accessor :resource_id

      # @return [String] The IP address or URI the resource to which a
      # connection attempt will be made.
      attr_accessor :address

      # @return [Integer] Port on which check connectivity will be performed.
      attr_accessor :port


      #
      # Mapper for ConnectivityDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectivityDestination',
          type: {
            name: 'Composite',
            class_name: 'ConnectivityDestination',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              address: {
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end