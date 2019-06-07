class RemItemIdFromRounds < ActiveRecord::Migration[5.2]
  def change
    remove_column :rounds, :items_id 
  end
end
