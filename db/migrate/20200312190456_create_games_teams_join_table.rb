class CreateGamesTeamsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :games, :teams
  end
end
