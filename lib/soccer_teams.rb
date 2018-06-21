
class SoccerTeam < ActiveRecord::Base
	has_many :match
	belongs_to :game_controller
end
