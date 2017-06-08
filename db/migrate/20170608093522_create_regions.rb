class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :roman_number
      t.integer :num_provinces
      t.integer :num_communes

      t.timestamps
    end
  end
end
