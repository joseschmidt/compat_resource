module ChefCompat
  module CopiedFromChef
    # This patch to ActionClass is necessary for the include to work
    require 'chef/resource'
    class Chef < ::Chef
      class Resource < ::Chef::Resource
        module ActionClass
          def self.use_inline_resources
          end
          def self.include_resource_dsl(include_resource_dsl)
          end
        end
      end
    end
  end
end

# Because resource does not include chef/provider, we have to do it here
require 'chef_compat/copied_from_chef/chef/provider'
