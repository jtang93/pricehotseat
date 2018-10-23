class Item < ApplicationRecord

  has_many :round_items
  has_many :rounds, :through => :round_items

end
