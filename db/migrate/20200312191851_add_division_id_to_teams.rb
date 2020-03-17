class AddDivisionIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :division_id, :integer
  end
end
