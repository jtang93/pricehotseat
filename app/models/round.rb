class Round < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :players, :through => :choices
  has_many :round_items
  has_many :items, :through => :round_items
end
