module Rails
  module Generators
    class StepGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_backend_step
        create_file "app/views/backend/#{plural_name}.html.erb",
                    "#generated backend interface for managing #{plural_name}"
      end

      private

      def plural_name
        file_name.pluralize
      end

      def file_name
          name.underscore.downcase
      end
    end
  end
end
