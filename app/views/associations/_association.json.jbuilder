json.extract! association, :id, :name, :address, :zipcode, :city, :lat, :long, :phone, :email, :members, :created_at, :updated_at
json.url association_url(association, format: :json)
