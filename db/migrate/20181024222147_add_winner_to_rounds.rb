class AddWinnerToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :winner, :string
  end
end
