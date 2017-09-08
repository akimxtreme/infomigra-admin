class CreateFamilyBonds < ActiveRecord::Migration[5.0]
  def change
    create_table :family_bonds do |t|
      t.string :name
      t.string :name_cr
      t.string :slug
      t.string :image
      t.string :description
      t.decimal :percentage_profile
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
