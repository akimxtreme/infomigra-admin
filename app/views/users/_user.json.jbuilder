json.extract! user, :id, :nickname, :first_name, :second_name, :first_surname, :second_surname, :email, :status, :password, :countries_id, :communes_id, :genders_id, :sexual_identities_id, :situations_arrivals_countries_id, :year_country, :month_country, :current_situation_countries_id, :year_current_situation_countries, :month_current_situation_countries, :current_statuses, :you_want_to_dos_id, :sentimental_situations_id, :person_waiting_for_a_child, :family_bonds_id, :profiles_id, :birthdate, :rut, :street_number, :latitude_y, :length_x, :distances_id, :level_studies_id, :date_work_start, :date_work_end, :date_work_end_undefined, :studies_id, :phone, :description_latest_works, :description_tasks_performed, :created_at, :updated_at
json.url user_url(user, format: :json)
