class User < ActiveRecord::Base
  has_one :soccer_teams
end
