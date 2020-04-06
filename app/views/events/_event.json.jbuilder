json.extract! event, :id, :name, :description, :date, :slots, :min_age, :max_age, :media, :start_hour, :end_hour, :created_at, :updated_at
json.url event_url(event, format: :json)
