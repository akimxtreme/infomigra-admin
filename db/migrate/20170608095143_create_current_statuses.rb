class CreateCurrentStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :current_statuses do |t|
      t.string :name
      t.string :description
      t.decimal :percentage_profile

      t.timestamps
    end
  end
end
