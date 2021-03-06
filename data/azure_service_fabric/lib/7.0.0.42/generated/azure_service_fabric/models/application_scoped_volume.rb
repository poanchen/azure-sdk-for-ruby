# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Describes a volume whose lifetime is scoped to the application's
    # lifetime.
    #
    class ApplicationScopedVolume < VolumeReference

      include MsRestAzure

      # @return [ApplicationScopedVolumeCreationParameters] Describes
      # parameters for creating application-scoped volumes.
      attr_accessor :creation_parameters


      #
      # Mapper for ApplicationScopedVolume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationScopedVolume',
          type: {
            name: 'Composite',
            class_name: 'ApplicationScopedVolume',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              read_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'readOnly',
                type: {
                  name: 'Boolean'
                }
              },
              destination_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destinationPath',
                type: {
                  name: 'String'
                }
              },
              creation_parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'creationParameters',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'kind',
                  uber_parent: 'ApplicationScopedVolumeCreationParameters',
                  class_name: 'ApplicationScopedVolumeCreationParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
