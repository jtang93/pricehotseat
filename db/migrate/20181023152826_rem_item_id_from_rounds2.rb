class RemItemIdFromRounds2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :rounds, :item_id 
  end
end
