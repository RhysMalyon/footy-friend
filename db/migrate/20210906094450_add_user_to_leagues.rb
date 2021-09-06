class AddUserToLeagues < ActiveRecord::Migration[6.1]
  def change
    add_reference :leagues, :user, null: false, foreign_key: true
  end
end
