#require 'rails/generators/rails/resource/resource_generator'
require 'generators/resource/resource_generator'
module Rails
  module Generators
    class ScaffoldMetaGenerator < ResourceGenerator # :nodoc:
      remove_hook_for :resource_controller
      remove_class_option :actions

      class_option :stylesheets, type: :boolean, desc: "Generate Stylesheets"
      class_option :stylesheet_engine, desc: "Engine for Stylesheets"
      class_option :assets, type: :boolean
      class_option :resource_route, type: :boolean
      class_option :scaffold_stylesheet, type: :boolean
      class_option :steps, type: :boolean, default: 'step'

      def handle_skip
        @options = @options.merge(stylesheets: false) unless options[:assets]
        @options = @options.merge(stylesheet_engine: false) unless options[:stylesheets] && options[:scaffold_stylesheet]
      end

      hook_for :scaffold_controller, required: true

      hook_for :assets do |assets|
        invoke assets, [controller_name]
      end

      hook_for :stylesheet_engine do |stylesheet_engine|
        if behavior == :invoke
          invoke stylesheet_engine, [controller_name]
        end
      end

      def mirate_if_invoke
        if behavior == :invoke
          say behavior.to_s + ' migrate', :green
          rake("db:migrate --trace")
        end
      end

      invoke 'step'

    end
  end
end
