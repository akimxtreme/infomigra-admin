json.extract! country, :id, :abbreviation, :name, :name_cr, :status, :flag_image, :continent, :continent_number, :generic_image, :country_category_id, :created_at, :updated_at, :country_category
json.url country_url(country, format: :json)