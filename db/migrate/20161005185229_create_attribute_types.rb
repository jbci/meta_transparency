class CreateAttributeTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :attribute_types do |t|
      t.string :name
      t.string :attr_type

      t.timestamps
    end
  end
end
