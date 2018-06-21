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

		 ▄▄▄▄▄▄▄▄▄▄▄               ▄▄▄▄▄▄▄▄▄▄▄               ▄▄▄▄▄▄▄▄▄▄▄
		▐░░░░░░░░░░░▌             ▐░░░░░░░░░░░▌             ▐░░░░░░░░░░░▌
		▐░█▀▀▀▀▀▀▀█░▌             ▐░█▀▀▀▀▀▀▀█░▌             ▐░█▀▀▀▀▀▀▀▀▀
		▐░▌       ▐░▌             ▐░▌       ▐░▌             ▐░▌
		▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄
		▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
		▐░█▀▀▀▀█░█▀▀  ▀▀▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀█░▌
		▐░▌     ▐░▌               ▐░▌                                 ▐░▌
		▐░▌      ▐░▌              ▐░▌                        ▄▄▄▄▄▄▄▄▄█░▌
		▐░▌       ▐░▌             ▐░▌                       ▐░░░░░░░░░░░▌
		 ▀         ▀               ▀                         ▀▀▀▀▀▀▀▀▀▀▀

		 ____ ____ _________ ____ ____ ____ ____ ____ ____
	 	||b |||y |||       |||R |||o |||b |||e |||r |||t ||
	 	||__|||__|||_______|||__|||__|||__|||__|||__|||__||
	 	|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|/__\|
	 		____ ____ ____ _________ ____ ____ ____ ____ ____
	 	||a |||n |||d |||       |||M |||i |||c |||h |||. ||
	 	||__|||__|||__|||_______|||__|||__|||__|||__|||__||
	 	|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|
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

	def choose_team
		system "clear"
		teams = array_of_teams

		puts GameController.bulletin_board

		puts "Please choose your team form the following teams listed."
		# Prints a friendly list of teams wit flags
		SoccerTeam.all.each do |el|
			puts "  #{el.flag}  |  #{el.country}"
		end
		# Asks user to choose a team and set it to favorite variable
		favorite = gets.chomp

		if teams.include?(favorite)
			system "clear"
			favorite_team = SoccerTeam.find_by(country: favorite)
			self.update(soccer_team_id: favorite_team.id)
			puts GameController.bulletin_board
			puts "Great!! #{favorite} is my favorite team too!!"
			sleep 1
			puts "Now, let's play the first match!!"
			puts "Are you ready?"
			puts "|  Yes  |  No  |"

			tell_me_yes
		else
			system "clear"
			puts "Hey! What's the matter?"
			puts "Is your finger shaking?"
			sleep 2
			puts "#{favorite} is not a valid team!"
			puts "|  🖥  Please type the name as it apears on your screen  🖥  |"
			sleep 3
			choose_team
		end
	end

	def tell_me_yes
		answer = gets.chomp
		if answer == "Yes"
			system "clear"
			puts GameController.bulletin_board
			puts "Great! Now let's create a match!"
			sleep 3
			#Run the #create_match method

		elsif answer == "No"
			system "clear"
			puts GameController.bulletin_board
			puts "Have a great day. Bye!"
			sleep 3

		else
			puts GameController.bulletin_board
			puts "Well '#{answer}' is not avalid answer"
			puts "Please enter Yes or No"
			puts "Ready?"
			puts "|  Yes  |  No  |"
			tell_me_yes
		end
	end

	def random_rival
		rivals_array = SoccerTeam.all.map do |team|
			team.country
		end
		binding.pry
	end

	def create_match
		Match.new(game.soccer_team_id, )
	end



end
