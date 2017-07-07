class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :abbreviation
      t.string :name
      t.string :flag_image
      t.references :country_category, foreign_key: true

      t.timestamps
    end
  end
end
