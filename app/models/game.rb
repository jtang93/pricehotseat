class Game < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :rounds, dependent: :destroy

  def generate_room_code
    code = (0...4).map{(65+rand(26)).chr}.join
    if Game.all.map{|game| game.room_code}.include? code
      code = generate_room_code
    end
    return code
  end

  def all_players_choices_are_in
    #byebug
    if self.players.exists? && self.players.first.choices.exists?
      self.players.map{|player| player.choices.find{|choice| choice.round_id == self.rounds.last.id}}.select{|choice| !choice.nil?}.size == self.players.size
    end
  end
end
