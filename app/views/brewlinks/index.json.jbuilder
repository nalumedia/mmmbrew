json.array!(@brewlinks) do |brewlink|
  json.extract! brewlink, :id, :brewlink_name, :brewlink_description, :brewlink_url
  json.url brewlink_url(brewlink, format: :json)
end
