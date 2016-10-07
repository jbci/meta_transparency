class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.references :user, foreign_key: true
      t.references :app_model, foreign_key: true

      t.timestamps
    end
  end
end
