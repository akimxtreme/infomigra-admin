class CreateCountryCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :country_categories do |t|
      t.string :name
      t.text :description
      t.decimal :percentage_profile

      t.timestamps
    end
  end
end
