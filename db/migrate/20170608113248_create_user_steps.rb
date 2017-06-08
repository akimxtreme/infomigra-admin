class CreateUserSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_steps do |t|
      t.references :users, foreign_key: true
      t.references :steps, foreign_key: true

      t.timestamps
    end
  end
end
