class ChangeWinnerToIntegerReal < ActiveRecord::Migration[5.2]
  def change
    change_column :rounds, :winner, :integer
  end
end
