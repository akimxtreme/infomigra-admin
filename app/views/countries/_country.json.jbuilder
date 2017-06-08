json.extract! country, :id, :abbreviation, :name, :flag_image, :country_categories_id, :created_at, :updated_at
json.url country_url(country, format: :json)
