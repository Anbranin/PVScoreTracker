class AddYearToDivisionTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :division_teams, :year, :string
  end
end
