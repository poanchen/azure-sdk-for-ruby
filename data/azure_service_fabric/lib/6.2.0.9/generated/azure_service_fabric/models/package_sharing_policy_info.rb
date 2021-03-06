# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents a policy for the package sharing.
    #
    class PackageSharingPolicyInfo

      include MsRestAzure

      # @return [String] The name of code, configuration or data package that
      # should be shared.
      attr_accessor :shared_package_name

      # @return [PackageSharingPolicyScope] Represents the scope for
      # PackageSharingPolicy. This is specified during
      # DeployServicePackageToNode operation. Possible values include: 'None',
      # 'All', 'Code', 'Config', 'Data'
      attr_accessor :package_sharing_scope


      #
      # Mapper for PackageSharingPolicyInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PackageSharingPolicyInfo',
          type: {
            name: 'Composite',
            class_name: 'PackageSharingPolicyInfo',
            model_properties: {
              shared_package_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SharedPackageName',
                type: {
                  name: 'String'
                }
              },
              package_sharing_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PackageSharingScope',
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
