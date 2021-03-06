# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for task that migrates SSIS packages from SQL Server to Azure SQL
    # Database Managed Instance.
    #
    class MigrateSsisTaskInput < SqlMigrationTaskInput

      include MsRestAzure

      # @return [SsisMigrationInfo] SSIS package migration information.
      attr_accessor :ssis_migration_info


      #
      # Mapper for MigrateSsisTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSsisTaskInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSsisTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              ssis_migration_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ssisMigrationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SsisMigrationInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
