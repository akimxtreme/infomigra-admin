class CreateYouWantToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :you_want_to_dos do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
