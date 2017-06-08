class CreateCommunes < ActiveRecord::Migration[5.0]
  def change
    create_table :communes do |t|
      t.string :name
      t.references :provinces, foreign_key: true

      t.timestamps
    end
  end
end
