json.extract! item, :id, :name, :media, :description, :build_time, :created_at, :updated_at
json.url item_url(item, format: :json)
