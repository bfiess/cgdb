class CreateGlazes < ActiveRecord::Migration
  def change
    create_table :glazes do |t|
      t.string :name
      t.text :description
      t.string :cone
      t.date :datetested
      t.integer :opacity_id
      t.integer :surface_id
      t.integer :atmosphere_id
      t.decimal :k2o, precision: 4, scale: 3
      t.decimal :na2o, precision: 4, scale: 3
      t.decimal :li2o, precision: 4, scale: 3
      t.decimal :cao, precision: 4, scale: 3
      t.decimal :mgo, precision: 4, scale: 3
      t.decimal :bao, precision: 4, scale: 3
      t.decimal :sro, precision: 4, scale: 3
      t.decimal :zno, precision: 4, scale: 3
      t.decimal :pbo, precision: 4, scale: 3
      t.decimal :feo, precision: 4, scale: 3
      t.decimal :cuo, precision: 4, scale: 3
      t.decimal :coo, precision: 4, scale: 3
      t.decimal :nio, precision: 4, scale: 3
      t.decimal :al2o3, precision: 4, scale: 3
      t.decimal :b2o3, precision: 4, scale: 3
      t.decimal :fe2o3, precision: 4, scale: 3
      t.decimal :p2o5, precision: 4, scale: 3
      t.decimal :sb2o3, precision: 4, scale: 3
      t.decimal :cr2o3, precision: 4, scale: 3
      t.decimal :v2o5, precision: 4, scale: 3
      t.decimal :sio2, precision: 4, scale: 3
      t.decimal :tio2, precision: 4, scale: 3
      t.decimal :zro2, precision: 4, scale: 3
      t.decimal :sno2, precision: 4, scale: 3
      t.decimal :mno2, precision: 4, scale: 3

      t.timestamps null: false
    end
  end
end
