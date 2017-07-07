class CreateCategorySteps < ActiveRecord::Migration[5.0]
  def change
    create_table :category_steps do |t|
      t.string :name
      t.string :description
      t.string :icon

      t.timestamps
    end
  end
end
