class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.string :name_cr
      t.text :description
      t.text :description_cr
      t.boolean :internal
      t.string :url
      t.integer :position
      t.references :category_step, foreign_key: true
      t.references :type_step, foreign_key: true

      t.timestamps
    end
  end
end
