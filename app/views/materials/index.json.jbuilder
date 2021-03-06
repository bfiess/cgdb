json.array!(@materials) do |material|
  json.extract! material, :id, :name, :eweight, :ppg, :colorant, :k2o, :na2o, :li2o, :cao, :mgo, :bao, :sro, :zno, :pbo, :feo, :cuo, :coo, :nio, :al2o3, :b2o3, :fe2o3, :p2o5, :sb2o3, :cr2o3, :v2o5, :sio2, :tio2, :zro2, :sno2, :mno2
  json.url material_url(material, format: :json)
end
