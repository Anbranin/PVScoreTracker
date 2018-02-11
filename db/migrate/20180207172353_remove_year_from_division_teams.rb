class RemoveYearFromDivisionTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column :division_teams, :year
  end
end
