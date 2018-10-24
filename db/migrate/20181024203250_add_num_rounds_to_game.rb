class AddNumRoundsToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :num_rounds, :integer
  end
end
