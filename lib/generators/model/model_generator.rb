require 'rails/generators/model_helpers'

module Rails
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase # :nodoc:
      include Rails::Generators::ModelHelpers

      def rollback_if_revoke
        if self.behavior == :revoke
          say behavior.to_s + ' rollback', :red
          rake("db:rollback --trace")
        end
      end

      argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"
      hook_for :orm, required: true, desc: "ORM to be invoked"
    end
  end
end
