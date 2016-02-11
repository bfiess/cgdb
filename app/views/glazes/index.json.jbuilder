json.array!(@glazes) do |glaze|
  json.extract! glaze, :id, :name, :description, :cone, :datetested, :opacity_id, :surface_id, :atmosphere_id, :k2o, :na2o, :li2o, :cao, :mgo, :bao, :sro, :zno, :pbo, :feo, :cuo, :coo, :nio, :al2o3, :b2o3, :fe2o3, :p2o5, :sb2o3, :cr2o3, :v2o5, :sio2, :tio2, :zro2, :sno2, :mno2
  json.url glaze_url(glaze, format: :json)
end
