json.extract! place, :id, :name, :address, :zipcode, :city, :lat, :long, :phone, :region, :infos, :created_at, :updated_at
json.url place_url(place, format: :json)
