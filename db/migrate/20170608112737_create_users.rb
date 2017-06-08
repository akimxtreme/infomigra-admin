class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :first_name
      t.string :second_name
      t.string :first_surname
      t.string :second_surname
      t.string :email
      t.integer :status
      t.string :password
      t.references :countries, foreign_key: true
      t.references :communes, foreign_key: true
      t.references :genders, foreign_key: true
      t.references :sexual_identities, foreign_key: true
      t.references :situations_arrivals_countries, foreign_key: true
      t.integer :year_country
      t.integer :month_country
      t.references :current_situation_countries, foreign_key: true
      t.integer :year_current_situation_countries
      t.integer :month_current_situation_countries
      t.integer :current_statuses
      t.references :you_want_to_dos, foreign_key: true
      t.references :sentimental_situations, foreign_key: true
      t.boolean :person_waiting_for_a_child
      t.references :family_bonds, foreign_key: true
      t.references :profiles, foreign_key: true
      t.date :birthdate
      t.string :rut
      t.string :street_number
      t.string :latitude_y
      t.string :length_x
      t.references :distances, foreign_key: true
      t.references :level_studies, foreign_key: true
      t.date :date_work_start
      t.date :date_work_end
      t.boolean :date_work_end_undefined
      t.references :studies, foreign_key: true
      t.string :phone
      t.string :description_latest_works
      t.string :description_tasks_performed

      t.timestamps
    end
  end
end
