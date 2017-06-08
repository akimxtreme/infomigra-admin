class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.references :days, foreign_key: true
      t.references :schedules, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
