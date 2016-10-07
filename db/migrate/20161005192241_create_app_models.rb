class CreateAppModels < ActiveRecord::Migration[5.0]
  def change
    create_table :app_models do |t|
      t.string :name
      t.string :plural
      t.boolean :main_model

      t.timestamps
    end
  end
end
