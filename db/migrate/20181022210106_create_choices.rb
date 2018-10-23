class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :guess_ammount
    end
  end
end
