class RemoveDivisionTeams < ActiveRecord::Migration[5.2]
  def change
    drop_table :division_teams
  end
end
