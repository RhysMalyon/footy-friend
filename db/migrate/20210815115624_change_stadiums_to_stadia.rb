class ChangeStadiumsToStadia < ActiveRecord::Migration[6.1]
  def change
    rename_table :stadiums, :stadia
  end
end
