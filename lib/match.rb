class Match < ActiveRecord::Base
	belongs_to :fifa_world_cup
	has_many :soccer_teams
end
