# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # Identifies the Azure key vault associated with a Batch account.
    #
    class KeyVaultReference

      include MsRestAzure

      # @return [String] The resource ID of the Azure key vault associated with
      # the Batch account.
      attr_accessor :id

      # @return [String] The Url of the Azure key vault associated with the
      # Batch account.
      attr_accessor :url


      #
      # Mapper for KeyVaultReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultReference',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: true,
                serialized_name: 'url',
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