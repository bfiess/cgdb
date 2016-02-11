class CreateClays < ActiveRecord::Migration
  def change
    create_table :clays do |t|
      t.string :name
      t.text :description
      t.string :cone
      t.date :datetested
      t.boolean :casting
      t.decimal :specificgravity
      t.decimal :dryshrink
      t.decimal :bisque
      t.decimal :glazeshrink
      t.decimal :woa
      t.integer :atmosphere_id
      t.decimal :k2o
      t.decimal :na2o
      t.decimal :li2o
      t.decimal :cao
      t.decimal :mgo
      t.decimal :bao
      t.decimal :sro
      t.decimal :zno
      t.decimal :pbo
      t.decimal :feo
      t.decimal :cuo
      t.decimal :coo
      t.decimal :nio
      t.decimal :al2o3
      t.decimal :b2o3
      t.decimal :fe2o3
      t.decimal :p2o5
      t.decimal :sb2o3
      t.decimal :cr2o3
      t.decimal :v2o5
      t.decimal :sio2
      t.decimal :tio2
      t.decimal :zro2
      t.decimal :sno2
      t.decimal :mno2

      t.timestamps null: false
    end
  end
end
