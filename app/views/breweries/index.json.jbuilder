json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :brewery_name, :brewery_description, :brewery_street, :brewery_city, :brewery_state, :brewery_zip, :brewery_phone, :brewery_www, :brewery_shortdescription
  json.url brewery_url(brewery, format: :json)
end
