class AddGameIdToDivisionTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :division_teams, :game_id, :integer
  end
end
