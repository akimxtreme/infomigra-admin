class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :country_categories, foreign_key: true
      t.references :situations_arrivals_countries, foreign_key: true
      t.references :current_statuses, foreign_key: true
      t.references :family_bonds, foreign_key: true

      t.timestamps
    end
  end
end
