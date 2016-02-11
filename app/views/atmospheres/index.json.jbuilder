json.array!(@atmospheres) do |atmosphere|
  json.extract! atmosphere, :id, :name
  json.url atmosphere_url(atmosphere, format: :json)
end
