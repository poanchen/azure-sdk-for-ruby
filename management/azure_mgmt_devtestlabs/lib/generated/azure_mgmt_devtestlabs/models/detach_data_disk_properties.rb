# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Request body for detaching data disk from a virtual machine.
    #
    class DetachDataDiskProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Specifies the disk resource ID to detach from virtual
      # machine.
      attr_accessor :existing_lab_disk_id


      #
      # Mapper for DetachDataDiskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DetachDataDiskProperties',
          type: {
            name: 'Composite',
            class_name: 'DetachDataDiskProperties',
            model_properties: {
              existing_lab_disk_id: {
                required: false,
                serialized_name: 'existingLabDiskId',
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