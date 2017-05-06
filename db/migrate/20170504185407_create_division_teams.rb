class CreateDivisionTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :division_teams do |t|
      t.integer :team_id
      t.integer :division_id
    end
  end
end
