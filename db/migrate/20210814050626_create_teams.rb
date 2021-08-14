class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :crest_url
      t.integer :founded
      t.string :city
      t.references :league, null: false, foreign_key: true
      t.references :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
