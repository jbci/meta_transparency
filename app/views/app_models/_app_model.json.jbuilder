json.extract! app_model, :id, :name, :plural, :main_model, :created_at, :updated_at
json.url app_model_url(app_model, format: :json)