# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Log policy schedule.
    #
    class LogSchedulePolicy < SchedulePolicy

      include MsRestAzure


      def initialize
        @schedulePolicyType = "LogSchedulePolicy"
      end

      attr_accessor :schedulePolicyType

      # @return [Integer] Frequency of the log schedule operation of this
      # policy in minutes.
      attr_accessor :schedule_frequency_in_mins


      #
      # Mapper for LogSchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogSchedulePolicy',
          type: {
            name: 'Composite',
            class_name: 'LogSchedulePolicy',
            model_properties: {
              schedulePolicyType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'schedulePolicyType',
                type: {
                  name: 'String'
                }
              },
              schedule_frequency_in_mins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduleFrequencyInMins',
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
