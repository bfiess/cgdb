json.array!(@surfaces) do |surface|
  json.extract! surface, :id, :name
  json.url surface_url(surface, format: :json)
end
