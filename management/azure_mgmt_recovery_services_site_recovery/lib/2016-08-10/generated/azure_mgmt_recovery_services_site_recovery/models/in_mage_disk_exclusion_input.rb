# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # DiskExclusionInput when doing enable protection of virtual machine in
    # InMage provider.
    #
    class InMageDiskExclusionInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<InMageVolumeExclusionOptions>] The volume label based
      # option for disk exclusion.
      attr_accessor :volume_options

      # @return [Array<InMageDiskSignatureExclusionOptions>] The guest disk
      # signature based option for disk exclusion.
      attr_accessor :disk_signature_options


      #
      # Mapper for InMageDiskExclusionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMageDiskExclusionInput',
          type: {
            name: 'Composite',
            class_name: 'InMageDiskExclusionInput',
            model_properties: {
              volume_options: {
                required: false,
                serialized_name: 'volumeOptions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InMageVolumeExclusionOptionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InMageVolumeExclusionOptions'
                      }
                  }
                }
              },
              disk_signature_options: {
                required: false,
                serialized_name: 'diskSignatureOptions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InMageDiskSignatureExclusionOptionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InMageDiskSignatureExclusionOptions'
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