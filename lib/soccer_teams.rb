class SoccerTeams < ActiveRecord::Base
	has_many :match
	has_many :player
end
