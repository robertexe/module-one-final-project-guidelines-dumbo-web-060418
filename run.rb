require_relative 'config/environment'
require 'pry'

## method to welcome the user
## method showing the user the team list
## then taking its selection and creating a favorite team variable

def welcome_message
	GameController.welcome_message
	sleep 3
	GameController.little_fifa_message
end

welcome_message

def choose_team
	puts "Please select one of the following teams listed."
	SoccerTeam.all.each do |el|
		puts el.country
	end
	favorite = gets.chomp
end

# def method_name
# 	Match.new(favorite)
#
# end
