class ChangeColumnTypeInTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :sales, :unit
    add_column :sales, :unit, :integer
    remove_column :stocks, :unit
    add_column :stocks, :unit, :integer
  end
end
