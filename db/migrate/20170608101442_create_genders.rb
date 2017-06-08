class CreateGenders < ActiveRecord::Migration[5.0]
  def change
    create_table :genders do |t|
      t.string :abbreviation_1
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
