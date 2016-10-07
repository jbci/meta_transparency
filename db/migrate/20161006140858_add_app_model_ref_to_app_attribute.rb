class AddAppModelRefToAppAttribute < ActiveRecord::Migration[5.0]
  def change
    add_reference :app_attributes, :app_model, foreign_key: true
  end
end
