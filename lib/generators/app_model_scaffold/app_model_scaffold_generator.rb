class AppModelScaffoldGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :name, :type =>:string, :required => true, :desc => "required"
  argument :fields, :type =>:array, :required => true, :desc => "required"

  desc  "app_model_scaffold description "

  def invoke_scaffold
    p "invoking septum scaffold with arguments: #{fields}"
    generate 'scaffold', name
  end

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
