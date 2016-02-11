class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :glaze_id
      t.integer :material_id
      t.decimal :amt, precision: 8, scale: 4

      t.timestamps null: false
    end
  end
end
