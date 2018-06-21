
class SoccerTeam < ActiveRecord::Base
	has_many :match
	belongs_to :user
end
