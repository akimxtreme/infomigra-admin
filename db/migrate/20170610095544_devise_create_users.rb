class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      #t.string :email,
      t.string :email,              null: true, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      # Adicionales
      t.string   :nickname
      t.string   :first_name
      t.string   :second_name
      t.string   :first_surname
      t.string   :second_surname
      t.string   :status
      t.integer  :country_id
      t.integer  :comuna_id
      t.integer  :gender_id
      t.integer  :sexual_identity_id
      t.integer  :situation_arrival_country_id
      t.integer  :year_country
      t.integer  :month_country
      t.integer  :current_situation_countries_id
      t.integer  :year_current_situation_countries
      t.integer  :month_current_situation_countries
      t.integer  :current_status_id
      t.integer  :you_want_to_do_id
      t.integer  :sentimental_situation_id
      t.boolean  :person_waiting_for_a_child
      t.integer  :family_bond_id
      t.integer  :profile_id
      t.date     :birthdate
      t.string   :rut
      t.string   :street_number
      t.string   :latitude_y
      t.string   :length_x
      t.integer  :distance_id
      t.integer  :level_study_id
      t.date     :date_work_start
      t.date     :date_work_end
      t.boolean  :date_work_end_undefined 
      t.integer  :study_id
      t.string   :phone
      t.string   :description_latest_works
      t.string   :description_tasks_performed
      t.string   :api_key

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true

    # Adicionales
    add_index :users, :api_key, unique: true
    add_index :users, :nickname, unique: true
    add_index :users, :rut, unique: true

  end
end
