require 'pry'
class GameController < ActiveRecord::Base

	belongs_to :match
	belongs_to :fifa
	belongs_to :soccer_team

  def self.welcome_message
    welcome_message = <<-HEREDOC

		 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄
		▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
		▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌
		▐░▌               ▐░▌     ▐░▌          ▐░▌       ▐░▌
		▐░█▄▄▄▄▄▄▄▄▄      ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌
		▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
		▐░█▀▀▀▀▀▀▀▀▀      ▐░▌     ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌
		▐░▌               ▐░▌     ▐░▌          ▐░▌       ▐░▌
		▐░▌           ▄▄▄▄█░█▄▄▄▄ ▐░▌          ▐░▌       ▐░▌
		▐░▌          ▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌
		 ▀            ▀▀▀▀▀▀▀▀▀▀▀  ▀            ▀         ▀


		 ╦═╗┌─┐┌─┐┬┌─   ╔═╗┌─┐┌─┐┌─┐┬─┐   ╔═╗┌─┐┬┌─┐┌─┐┌─┐┬─┐┌─┐
		 ╠╦╝│ ││  ├┴┐───╠═╝├─┤├─┘├┤ ├┬┘───╚═╗│  │└─┐└─┐│ │├┬┘└─┐
		 ╩╚═└─┘└─┘┴ ┴   ╩  ┴ ┴┴  └─┘┴└─   ╚═╝└─┘┴└─┘└─┘└─┘┴└─└─┘


		 ┌┐ ┬ ┬  ╦═╗┌─┐┌┐ ┌─┐┬─┐┌┬┐
		 ├┴┐└┬┘  ╠╦╝│ │├┴┐├┤ ├┬┘ │
		 └─┘ ┴   ╩╚═└─┘└─┘└─┘┴└─ ┴
		 ┌─┐┌┐┌┌┬┐  ╔╦╗┬┌─┐┬ ┬
		 ├─┤│││ ││  ║║║││  ├─┤
		 ┴ ┴┘└┘─┴┘  ╩ ╩┴└─┘┴ ┴
		HEREDOC
  end

	def self.bulletin_board
		bulletin_board = <<-HEREDOC

		8   8  8                                                      8"""" 8  8"""" 8""""8
		8   8  8 eeee e     eeee eeeee eeeeeee eeee    eeeee eeeee    8     8  8     8    8
		8e  8  8 8    8     8  8 8  88 8  8  8 8         8   8  88    8eeee 8e 8eeee 8eeee8
		88  8  8 8eee 8e    8e   8   8 8e 8  8 8eee      8e  8   8    88    88 88    88   8
		88  8  8 88   88    88   8   8 88 8  8 88        88  8   8    88    88 88    88   8
		88ee8ee8 88ee 88eee 88e8 8eee8 88 8  8 88ee      88  8eee8    88    88 88    88   8

		8"""8                         8""""8                          8""""8                                        8
		8   8  eeeee eeee e   e       8    8 eeeee eeeee eeee eeeee   8      eeee e  eeeee eeeee eeeee eeeee  eeeee 88
		8eee8e 8  88 8  8 8   8       8eeee8 8   8 8   8 8    8   8   8eeeee 8  8 8  8   " 8   " 8  88 8   8  8   " 88
		88   8 8   8 8e   8eee8e eeee 88     8eee8 8eee8 8eee 8eee8e eeee 88 8e   8e 8eeee 8eeee 8   8 8eee8e 8eeee 88
		88   8 8   8 88   88   8      88     88  8 88    88   88   8  e   88 88   88    88    88 8   8 88   8    88
		88   8 8eee8 88e8 88   8      88     88  8 88    88ee 88   8  8eee88 88e8 88 8ee88 8ee88 8eee8 88   8 8ee88 88
		HEREDOC
	end

	def array_of_teams
		SoccerTeam.all.map do |team|
			team.country
		end
	end
	# favorite_team = SoccerTeam.find_by(country: favorite)
	# self.update(soccer_team_id: favorite_team.id)

	def get_ready_message
		system "clear"
		puts GameController.bulletin_board.blue
		puts "Great!! #{self.soccer_team.country} is my favorite team too!!".green
		sleep 1
		puts "Now, let's play the first match!!".green
		puts "Are you ready?".green
		puts "|  Yes  |  No  |".green
	end



	def invalid_team(team)
		system "clear"
		puts GameController.bulletin_board.blue
		puts "Hey! What's the matter?".red
		puts "Is your finger shaking?".red
		puts "#{team} is not a valid team!".red
		puts "|  🖥  Please type the name as it apears on your screen  🖥  |".green
		sleep 3
	end

	def brave
		system "clear"
		puts GameController.bulletin_board.blue
		puts "Great! Now let's create a match!".green
		sleep 3
		create_match
	end

	def coward
		system "clear"
		puts GameController.bulletin_board.blue
		puts "Have a great day. Bye!".yellow
		exit
	end

	def input_favorite
		user_input = gets.chomp
		user_input
	end

	def choose_team
		system "clear"
		teams = array_of_teams
		puts GameController.bulletin_board.blue
		puts "Please choose your team from the list below.".green
		SoccerTeam.all.each do |el|
			puts "  #{el.flag}  |  #{el.country}"
		end
		favorite = self.input_favorite
		self.logic(favorite)
	end

	def favorite_team
		favorite_team = SoccerTeam.find_by(country: input_favorite)
	end

	def favorite_team_id(favorite)
	  favorite_team = SoccerTeam.find_by(country: favorite).id
	end

	def logic(team)
		if !array_of_teams.include?(team)
			self.invalid_team(team)
			self.choose_team
		else
			favorite_id = self.favorite_team_id(team)
			self.update(soccer_team_id: favorite_id)

			self.get_ready_message
			answer = gets.chomp
			yes_or_no(answer)
		end

	end

	def yes_or_no(answer)
		case answer
			when "Yes"
				brave
			when "No"
				coward
			else
				puts "Well #{answer} is not a valid answer"
				self.get_ready_message
				answer = gets.chomp
				yes_or_no(answer)
		end
	end

	def rivals_array

		rival_array = teams.delete_if {|team| team == favorite}
	end

	def random_rival
  	rivals_array.sample
	end

	def get_rival_id
		SoccerTeam.find_by(country: random_rival).id
	end

	def create_match
	end
end
