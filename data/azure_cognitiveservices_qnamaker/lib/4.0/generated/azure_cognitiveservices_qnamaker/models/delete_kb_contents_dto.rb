# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # PATCH body schema of Delete Operation in UpdateKb
    #
    class DeleteKbContentsDTO

      include MsRestAzure

      # @return [Array<Integer>] List of Qna Ids to be deleted
      attr_accessor :ids

      # @return [Array<String>] List of sources to be deleted from
      # knowledgebase.
      attr_accessor :sources


      #
      # Mapper for DeleteKbContentsDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeleteKbContentsDTO',
          type: {
            name: 'Composite',
            class_name: 'DeleteKbContentsDTO',
            model_properties: {
              ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ids',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              sources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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