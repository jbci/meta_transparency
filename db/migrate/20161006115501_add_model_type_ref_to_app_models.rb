class AddModelTypeRefToAppModels < ActiveRecord::Migration[5.0]
  def change
    add_reference :app_models, :model_type, foreign_key: true
  end
end
