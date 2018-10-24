class Player < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :rounds, :through => :choices

  def choice_for(round)
    self.choices.find{|c| c.round_id == round.id}
  end
end
