class CreateFamilyBonds < ActiveRecord::Migration[5.0]
  def change
    create_table :family_bonds do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.decimal :percentage_profile

      t.timestamps
    end
  end
end
