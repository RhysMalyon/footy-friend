class CreateSquads < ActiveRecord::Migration[6.1]
  def change
    create_table :squads do |t|
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
