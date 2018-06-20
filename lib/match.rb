class Match < ActiveRecord::Base
	belongs_to :game_controller
	has_many :soccer_teams
end
