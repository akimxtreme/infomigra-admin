class CreateUserAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_availabilities do |t|
      t.references :abilities, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
