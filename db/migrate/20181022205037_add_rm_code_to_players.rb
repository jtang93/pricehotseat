class AddRmCodeToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :room_code, :string
  end
end
