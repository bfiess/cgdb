class AddUserIdToGlazes < ActiveRecord::Migration
  def change
    add_column :glazes, :user_id, :integer
  end
end
