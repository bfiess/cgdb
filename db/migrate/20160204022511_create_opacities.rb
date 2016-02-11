class CreateOpacities < ActiveRecord::Migration
  def change
    create_table :opacities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
