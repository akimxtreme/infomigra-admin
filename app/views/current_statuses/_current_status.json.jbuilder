json.extract! current_status, :id, :name, :description, :percentage_profile, :created_at, :updated_at
json.url current_status_url(current_status, format: :json)
