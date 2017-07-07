json.extract! country, :id, :abbreviation, :name, :flag_image, :country_category_id, :created_at, :updated_at, :country_category
json.url country_url(country, format: :json)