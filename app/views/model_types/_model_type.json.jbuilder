json.extract! model_type, :id, :name, :config_model, :created_at, :updated_at
json.url model_type_url(model_type, format: :json)