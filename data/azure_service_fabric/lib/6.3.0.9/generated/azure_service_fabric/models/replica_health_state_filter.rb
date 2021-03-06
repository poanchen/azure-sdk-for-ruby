# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Defines matching criteria to determine whether a replica should be
    # included as a child of a partition in the cluster health chunk.
    # The replicas are only returned if the parent entities match a filter
    # specified in the cluster health chunk query description. The parent
    # partition, service and application must be included in the cluster health
    # chunk.
    # One filter can match zero, one or multiple replicas, depending on its
    # properties.
    #
    class ReplicaHealthStateFilter

      include MsRestAzure

      # @return [String] Id of the stateful service replica or stateless
      # service instance that matches the filter. The filter is applied only to
      # the specified replica, if it exists.
      # If the replica doesn't exist, no replica is returned in the cluster
      # health chunk based on this filter.
      # If the replica exists, it is included in the cluster health chunk if it
      # respects the other filter properties.
      # If not specified, all replicas that match the parent filters (if any)
      # are taken into consideration and matched against the other filter
      # members, like health state filter.
      attr_accessor :replica_or_instance_id_filter

      # @return [Integer] The filter for the health state of the replicas. It
      # allows selecting replicas if they match the desired health states.
      # The possible values are integer value of one of the following health
      # states. Only replicas that match the filter are returned. All replicas
      # are used to evaluate the parent partition aggregated health state.
      # If not specified, default value is None, unless the replica ID is
      # specified. If the filter has default value and replica ID is specified,
      # the matching replica is returned.
      # The state values are flag-based enumeration, so the value could be a
      # combination of these values obtained using bitwise 'OR' operator.
      # For example, if the provided value is 6, it matches replicas with
      # HealthState value of OK (2) and Warning (4).
      #
      # - Default - Default value. Matches any HealthState. The value is zero.
      # - None - Filter that doesn't match any HealthState value. Used in order
      # to return no results on a given collection of states. The value is 1.
      # - Ok - Filter that matches input with HealthState value Ok. The value
      # is 2.
      # - Warning - Filter that matches input with HealthState value Warning.
      # The value is 4.
      # - Error - Filter that matches input with HealthState value Error. The
      # value is 8.
      # - All - Filter that matches input with any HealthState value. The value
      # is 65535. Default value: 0 .
      attr_accessor :health_state_filter


      #
      # Mapper for ReplicaHealthStateFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicaHealthStateFilter',
          type: {
            name: 'Composite',
            class_name: 'ReplicaHealthStateFilter',
            model_properties: {
              replica_or_instance_id_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaOrInstanceIdFilter',
                type: {
                  name: 'String'
                }
              },
              health_state_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStateFilter',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
