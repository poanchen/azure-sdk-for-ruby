# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # Contains the localized display information for this particular
    # operation/action. These value will be used by several clients for (a)
    # custom role definitions for RBAC, (b) complex query filters for the event
    # service and (c) audit history/records for management operations.
    #
    class AvailableProviderOperationDisplay

      include MsRestAzure

      # @return [String] The localized friendly form of the resource provider
      # name - it is expected to also include the publisher/company
      # responsible. It should use Title Casing and begin with 'Microsoft' for
      # 1st party services.
      attr_accessor :provider

      # @return [String] The localized friendly form of the resource type
      # related to this action/operation - it should match the public
      # documentation for the resource provider. It should use Title Casing -
      # for examples, please refer to the 'name' section.
      attr_accessor :resource

      # @return [String] The localized friendly name for the operation, as it
      # should be shown to the user. It should be concise (to fit in drop
      # downs) but clear (i.e. self-documenting). It should use Title Casing
      # and include the entity/resource to which it applies.
      attr_accessor :operation

      # @return [String] The localized friendly description for the operation,
      # as it should be shown to the user. It should be thorough, yet concise -
      # it will be used in tool tips and detailed views.
      attr_accessor :description


      #
      # Mapper for AvailableProviderOperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableProviderOperationDisplay',
          type: {
            name: 'Composite',
            class_name: 'AvailableProviderOperationDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
