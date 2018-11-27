# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Disk details for E2A provider.
    #
    class AzureVmDiskDetails

      include MsRestAzure

      # @return [String] VHD type.
      attr_accessor :vhd_type

      # @return [String] The VHD id.
      attr_accessor :vhd_id

      # @return [String] VHD name.
      attr_accessor :vhd_name

      # @return [String] Max side in MB.
      attr_accessor :max_size_mb

      # @return [String] Blob uri of the Azure disk.
      attr_accessor :target_disk_location

      # @return [String] The target Azure disk name.
      attr_accessor :target_disk_name

      # @return [String] Ordinal\LunId of the disk for the Azure VM.
      attr_accessor :lun_id


      #
      # Mapper for AzureVmDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureVmDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'AzureVmDiskDetails',
            model_properties: {
              vhd_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdType',
                type: {
                  name: 'String'
                }
              },
              vhd_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdId',
                type: {
                  name: 'String'
                }
              },
              vhd_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhdName',
                type: {
                  name: 'String'
                }
              },
              max_size_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxSizeMB',
                type: {
                  name: 'String'
                }
              },
              target_disk_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDiskLocation',
                type: {
                  name: 'String'
                }
              },
              target_disk_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDiskName',
                type: {
                  name: 'String'
                }
              },
              lun_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lunId',
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