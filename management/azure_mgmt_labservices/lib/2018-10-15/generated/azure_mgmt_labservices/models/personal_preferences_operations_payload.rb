# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents payload for any Environment operations like get, start, stop,
    # connect
    #
    class PersonalPreferencesOperationsPayload

      include MsRestAzure

      # @return [String] Resource Id of the lab account
      attr_accessor :lab_account_resource_id

      # @return [AddRemove] Enum indicating if user is adding or removing a
      # favorite lab. Possible values include: 'Add', 'Remove'
      attr_accessor :add_remove

      # @return [String] Resource Id of the lab to add/remove from the
      # favorites list
      attr_accessor :lab_resource_id


      #
      # Mapper for PersonalPreferencesOperationsPayload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PersonalPreferencesOperationsPayload',
          type: {
            name: 'Composite',
            class_name: 'PersonalPreferencesOperationsPayload',
            model_properties: {
              lab_account_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labAccountResourceId',
                type: {
                  name: 'String'
                }
              },
              add_remove: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addRemove',
                type: {
                  name: 'String'
                }
              },
              lab_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labResourceId',
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
