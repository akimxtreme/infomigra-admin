class CreateDistances < ActiveRecord::Migration[5.0]
  def change
    create_table :distances do |t|
      t.string :name
      t.text :description
      t.string :kilometers

      t.timestamps
    end
  end
end
