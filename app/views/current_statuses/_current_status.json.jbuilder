json.extract! current_status, :id, :name, :name_cr, :slug, :image, :description, :percentage_profile, :created_at, :updated_at
json.url current_status_url(current_status, format: :json)
