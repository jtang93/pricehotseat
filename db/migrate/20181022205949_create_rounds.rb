class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.integer :choice_id
      t.integer :item_id
    end
  end
end
