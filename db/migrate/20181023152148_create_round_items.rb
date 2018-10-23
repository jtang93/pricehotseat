class CreateRoundItems < ActiveRecord::Migration[5.2]
  def change
    create_table :round_items do |t|
      t.integer :round_id
      t.integer :item_id
      t.timestamps
    end
  end
end
