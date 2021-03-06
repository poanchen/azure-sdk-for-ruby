# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_05_05_preview
  module Models
    #
    # Aggregated property of each type
    #
    class SmartGroupAggregatedProperty

      include MsRestAzure

      # @return [String] Name of the type.
      attr_accessor :name

      # @return [Integer] Total number of items of type.
      attr_accessor :count


      #
      # Mapper for SmartGroupAggregatedProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'smartGroupAggregatedProperty',
          type: {
            name: 'Composite',
            class_name: 'SmartGroupAggregatedProperty',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
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
