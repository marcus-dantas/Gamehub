class AddUserIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :users, foreign_key: true
  end
end
