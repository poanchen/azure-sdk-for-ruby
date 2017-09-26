# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Represents a collection of diagnostic setting category resources.
    #
    class DiagnosticSettingsCategoryResourceCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<DiagnosticSettingsCategoryResource>] The collection of
      # diagnostic settings category resources.
      attr_accessor :value


      #
      # Mapper for DiagnosticSettingsCategoryResourceCollection class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticSettingsCategoryResourceCollection',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsCategoryResourceCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiagnosticSettingsCategoryResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticSettingsCategoryResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
