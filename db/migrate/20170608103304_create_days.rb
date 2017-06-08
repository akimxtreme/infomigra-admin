class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :name
      t.string :abbreviation
      t.text :description

      t.timestamps
    end
  end
end
