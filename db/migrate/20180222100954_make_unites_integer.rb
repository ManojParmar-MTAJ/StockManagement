class MakeUnitesInteger < ActiveRecord::Migration[5.1]
  def change
    remove_column :stocks, :unit
    add_column :stocks, :unit, :integer
  end
end
