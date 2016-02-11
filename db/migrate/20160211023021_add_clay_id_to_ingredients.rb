class AddClayIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :clay_id, :integer
  end
end
