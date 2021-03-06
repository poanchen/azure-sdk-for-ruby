# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05
  module Models
    #
    # Group the result set.
    #
    class AlertsSummaryGroup

      include MsRestAzure

      # @return [Integer] Total count of the result set.
      attr_accessor :total

      # @return [Integer] Total count of the smart groups.
      attr_accessor :smart_groups_count

      # @return [String] Name of the field aggregated
      attr_accessor :groupedby

      # @return [Array<AlertsSummaryGroupItem>] List of the items
      attr_accessor :values


      #
      # Mapper for AlertsSummaryGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryGroup',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryGroup',
            model_properties: {
              total: {
                client_side_validation: true,
                required: false,
                serialized_name: 'total',
                type: {
                  name: 'Number'
                }
              },
              smart_groups_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smartGroupsCount',
                type: {
                  name: 'Number'
                }
              },
              groupedby: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupedby',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlertsSummaryGroupItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertsSummaryGroupItem'
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
