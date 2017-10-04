# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce::Api_2015_06_01_preview
  module Models
    #
    # Key-value pairs of instance details in the legacy format.
    #
    class InfoField

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Identifies the name of the instance provisioned by the
      # user.
      attr_accessor :project


      #
      # Mapper for InfoField class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InfoField',
          type: {
            name: 'Composite',
            class_name: 'InfoField',
            model_properties: {
              project: {
                required: false,
                serialized_name: 'project',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end