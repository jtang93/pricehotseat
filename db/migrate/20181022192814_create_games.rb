class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :room_code
      t.integer :current_round
      t.timestamps
    end
  end
end
