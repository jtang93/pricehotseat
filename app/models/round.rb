class Round < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :players, :through => :choices
end
