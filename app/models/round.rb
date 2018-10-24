class Round < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :players, :through => :choices
  has_one :round_item
  has_one :item, :through => :round_item
end
