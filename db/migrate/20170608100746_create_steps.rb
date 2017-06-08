class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.references :category_steps, foreign_key: true
      t.references :type_steps, foreign_key: true

      t.timestamps
    end
  end
end
