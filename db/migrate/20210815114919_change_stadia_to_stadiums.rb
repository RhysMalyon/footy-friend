class ChangeStadiaToStadiums < ActiveRecord::Migration[6.1]
  def change
    rename_table :stadia, :stadiums
  end
end
