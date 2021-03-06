# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Database, Server or Elastic Pool Recommended Action.
    #
    class RecommendedAction < ProxyResource

      include MsRestAzure

      # @return [String] Resource kind.
      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location

      # @return [String] Gets the reason for recommending this action. e.g.,
      # DuplicateIndex
      attr_accessor :recommendation_reason

      # @return [DateTime] Gets the time since when this recommended action is
      # valid.
      attr_accessor :valid_since

      # @return [DateTime] Gets time when this recommended action was last
      # refreshed.
      attr_accessor :last_refresh

      # @return [RecommendedActionStateInfo] Gets the info of the current state
      # the recommended action is in.
      attr_accessor :state

      # @return [Boolean] Gets if this recommended action is actionable by user
      attr_accessor :is_executable_action

      # @return [Boolean] Gets if changes applied by this recommended action
      # can be reverted by user
      attr_accessor :is_revertable_action

      # @return [Boolean] Gets if this recommended action was suggested some
      # time ago but user chose to ignore this and system added a new
      # recommended action again.
      attr_accessor :is_archived_action

      # @return [DateTime] Gets the time when system started applying this
      # recommended action on the user resource. e.g., index creation start
      # time
      attr_accessor :execute_action_start_time

      # @return [String] Gets the time taken for applying this recommended
      # action on user resource. e.g., time taken for index creation
      attr_accessor :execute_action_duration

      # @return [DateTime] Gets the time when system started reverting changes
      # of this recommended action on user resource. e.g., time when index drop
      # is executed.
      attr_accessor :revert_action_start_time

      # @return [String] Gets the time taken for reverting changes of this
      # recommended action on user resource. e.g., time taken for dropping the
      # created index.
      attr_accessor :revert_action_duration

      # @return [RecommendedActionInitiatedBy] Gets if approval for applying
      # this recommended action was given by user/system. Possible values
      # include: 'User', 'System'
      attr_accessor :execute_action_initiated_by

      # @return [DateTime] Gets the time when this recommended action was
      # approved for execution.
      attr_accessor :execute_action_initiated_time

      # @return [RecommendedActionInitiatedBy] Gets if approval for reverting
      # this recommended action was given by user/system. Possible values
      # include: 'User', 'System'
      attr_accessor :revert_action_initiated_by

      # @return [DateTime] Gets the time when this recommended action was
      # approved for revert.
      attr_accessor :revert_action_initiated_time

      # @return [Integer] Gets the impact of this recommended action. Possible
      # values are 1 - Low impact, 2 - Medium Impact and 3 - High Impact
      attr_accessor :score

      # @return [RecommendedActionImplementationInfo] Gets the implementation
      # details of this recommended action for user to apply it manually.
      attr_accessor :implementation_details

      # @return [RecommendedActionErrorInfo] Gets the error details if and why
      # this recommended action is put to error state.
      attr_accessor :error_details

      # @return [Array<RecommendedActionImpactRecord>] Gets the estimated
      # impact info for this recommended action e.g., Estimated CPU gain,
      # Estimated Disk Space change
      attr_accessor :estimated_impact

      # @return [Array<RecommendedActionImpactRecord>] Gets the observed/actual
      # impact info for this recommended action e.g., Actual CPU gain, Actual
      # Disk Space change
      attr_accessor :observed_impact

      # @return [Array<RecommendedActionMetricInfo>] Gets the time series info
      # of metrics for this recommended action e.g., CPU consumption time
      # series
      attr_accessor :time_series

      # @return [Array<String>] Gets the linked objects, if any.
      attr_accessor :linked_objects

      # @return Gets additional details specific to this recommended action.
      attr_accessor :details


      #
      # Mapper for RecommendedAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecommendedAction',
          type: {
            name: 'Composite',
            class_name: 'RecommendedAction',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              recommendation_reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendationReason',
                type: {
                  name: 'String'
                }
              },
              valid_since: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.validSince',
                type: {
                  name: 'DateTime'
                }
              },
              last_refresh: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastRefresh',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Composite',
                  class_name: 'RecommendedActionStateInfo'
                }
              },
              is_executable_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isExecutableAction',
                type: {
                  name: 'Boolean'
                }
              },
              is_revertable_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isRevertableAction',
                type: {
                  name: 'Boolean'
                }
              },
              is_archived_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isArchivedAction',
                type: {
                  name: 'Boolean'
                }
              },
              execute_action_start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.executeActionStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              execute_action_duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.executeActionDuration',
                type: {
                  name: 'String'
                }
              },
              revert_action_start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.revertActionStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              revert_action_duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.revertActionDuration',
                type: {
                  name: 'String'
                }
              },
              execute_action_initiated_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.executeActionInitiatedBy',
                type: {
                  name: 'Enum',
                  module: 'RecommendedActionInitiatedBy'
                }
              },
              execute_action_initiated_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.executeActionInitiatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              revert_action_initiated_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.revertActionInitiatedBy',
                type: {
                  name: 'Enum',
                  module: 'RecommendedActionInitiatedBy'
                }
              },
              revert_action_initiated_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.revertActionInitiatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              score: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.score',
                type: {
                  name: 'Number'
                }
              },
              implementation_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.implementationDetails',
                type: {
                  name: 'Composite',
                  class_name: 'RecommendedActionImplementationInfo'
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.errorDetails',
                type: {
                  name: 'Composite',
                  class_name: 'RecommendedActionErrorInfo'
                }
              },
              estimated_impact: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.estimatedImpact',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedActionImpactRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedActionImpactRecord'
                      }
                  }
                }
              },
              observed_impact: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.observedImpact',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedActionImpactRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedActionImpactRecord'
                      }
                  }
                }
              },
              time_series: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.timeSeries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedActionMetricInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedActionMetricInfo'
                      }
                  }
                }
              },
              linked_objects: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.linkedObjects',
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
              },
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.details',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
