class ModStartBoolToGames < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :started?, :started
  end
end
