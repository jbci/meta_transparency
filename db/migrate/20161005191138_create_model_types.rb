class CreateModelTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :model_types do |t|
      t.string :name
      t.boolean :config_model

      t.timestamps
    end
  end
end
