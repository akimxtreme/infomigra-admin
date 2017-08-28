#json.extract! country, :id, :abbreviation, :name, :name_cr, :status, :flag_image, :continent, :continent_number, :generic_image, :country_category_id, :created_at, :updated_at, :country_category
json.extract! country, :id, :name, :name_cr, :flag_image,:generic_image,:country_category_id,:country_category_percentage_profile
#json.url country_url(country, format: :json)