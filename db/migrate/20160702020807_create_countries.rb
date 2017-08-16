class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :abbreviation
      t.string :name
      t.string :name_cr
      t.boolean :status
      t.string :flag_image
      t.string :continent
      t.integer :continent_number
      t.boolean :generic_image, default: true
      t.references :country_category, foreign_key: true
      t.timestamps
    end
  end
end
