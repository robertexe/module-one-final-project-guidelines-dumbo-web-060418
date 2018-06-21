class Match < ActiveRecord::Base
	belongs_to :game_controller
	has_many :soccer_teams

	def team_one
		# SoccerTeam.find(self.team_one_id)
	end

	def self.team_two

	end
end
