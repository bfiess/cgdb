json.array!(@opacities) do |opacity|
  json.extract! opacity, :id, :name
  json.url opacity_url(opacity, format: :json)
end
