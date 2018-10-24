class ChangeWinnerToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :rounds, :winner, :boolean
  end
end
