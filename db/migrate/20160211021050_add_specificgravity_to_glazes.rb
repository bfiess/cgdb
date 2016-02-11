class AddSpecificgravityToGlazes < ActiveRecord::Migration
  def change
    add_column :glazes, :specificgravity, :decimal, precision: 3, scale: 2
  end
end
