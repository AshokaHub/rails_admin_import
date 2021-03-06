require 'rails_admin_import/config'
require 'rails_admin_import/config/base'

module RailsAdminImport
  module Config
    class Model < RailsAdminImport::Config::Base
      def initialize(entity_name)
      end

      register_instance_option(:label) do
        :id
      end

      register_instance_option(:label_2) do
        nil
      end

      register_instance_option(:included_fields) do
        []
      end

      register_instance_option(:excluded_fields) do
        []
      end

      register_instance_option(:extra_fields) do
        []
      end

      register_instance_option(:update_lookup_field) do
        nil
      end

      register_instance_option(:update_lookup_field_2) do
        nil
      end

      # params to callback will be (model, row, map, role, current_user)
      # return false to cancel save when importing nested collection
      register_instance_option(:before_import_save) do
        nil
      end

      # callback that receives results array
      register_instance_option(:after_import) do
        nil
      end
      ######  Import as nested collection  ######

      register_instance_option(:nested_field) do
        nil
      end

      # lambda that returns a parent instance
      # receives args: role, current_user
      register_instance_option(:create_parent) do
        nil
      end

      # param to callback will be (parent)
      # receives args: parent_object, role, current_user
      register_instance_option(:before_parent_save) do
        nil
      end
      register_instance_option(:after_parent_save) do
        nil
      end

    end
  end
end
