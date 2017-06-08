class CreateCurrentSituationCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :current_situation_countries do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
