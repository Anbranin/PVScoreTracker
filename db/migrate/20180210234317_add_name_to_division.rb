class AddNameToDivision < ActiveRecord::Migration[5.1]
  def change
    add_column :divisions, :name, :string
  end
end
