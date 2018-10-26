class Round < ApplicationRecord
  belongs_to :game
  has_many :choices, dependent: :destroy
  has_many :players, :through => :choices
  has_one :round_item, dependent: :destroy
  has_one :item, :through => :round_item

  def find_uniq_item
    tmp_item = Item.all.sample
    if self.game.rounds.map{|r| r.item == tmp_item}.include? true
      tmp_item = find_uniq_item
    end
    tmp_item
  end

  def get_winner
    if self.winner
      Player.find(self.winner)
    else
      nil
    end
  end

  def find_winner
    winner = nil
    self.players.each do |player|
      if player.choice_for(self).guess_ammount <= self.item.price
        if !winner
          winner = player
        elsif player.choice_for(self).guess_ammount > winner.choice_for(self).guess_ammount
          winner = player
        end
      end
    end
    if !!winner
      winner
    else
      nil
    end
  end
end
