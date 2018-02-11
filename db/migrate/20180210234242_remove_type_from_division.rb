class RemoveTypeFromDivision < ActiveRecord::Migration[5.1]
  def change
    remove_column :divisions, :type
  end
end
