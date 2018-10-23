class Player < ApplicationRecord
  belongs_to :game
  has_many :choices
  has_many :rounds, :through => :choices
end
