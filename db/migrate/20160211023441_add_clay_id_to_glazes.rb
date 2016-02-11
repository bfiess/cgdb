class AddClayIdToGlazes < ActiveRecord::Migration
  def change
    add_column :glazes, :clay_id, :integer
  end
end
