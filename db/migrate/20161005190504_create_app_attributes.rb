class CreateAppAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :app_attributes do |t|
      t.string :name
      t.boolean :mandatory
      t.string :default_value
      t.references :attribute_type, foreign_key: true

      t.timestamps
    end
  end
end
