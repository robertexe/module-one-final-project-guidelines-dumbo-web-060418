require_relative 'config/environment'
require 'pry'

## method to welcome the user
## method showing the user the team list
## then taking its selection and creating a favorite team variable


def run_script
	game = GameController.new
	system "clear"
	puts GameController.welcome_message
	#sleep 4
	system "clear"
	puts GameController.bulletin_board
	game.array_of_teams
	game.choose_team
	game.favorite_team
	game.favorite_team_id
	# random_rival
	# get_rival_id
	# create_match
end






run_script
