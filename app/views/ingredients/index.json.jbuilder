json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :glaze_id, :material_id, :amt
  json.url ingredient_url(ingredient, format: :json)
end
