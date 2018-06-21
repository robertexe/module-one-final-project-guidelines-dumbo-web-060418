require_relative 'config/environment'
require 'pry'

## method to welcome the user
## method showing the user the team list
## then taking its selection and creating a favorite team variable

def welcome_message
	GameController.welcome_message
end
system "clear"
puts welcome_message
# binding.pry
sleep 5
system "clear"
def choose_team
	puts "Welcome to the geatest tournament!"
	puts "Please choose your team form the following teams listed."
	SoccerTeam.all.each do |el|
		puts "  #{el.flag}  |  #{el.country}"
	end
	favorite = gets.chomp
	# binding.pry
	if SoccerTeam.all.map do |team|
		team.country == favorite
	  end
		puts "Great!! #{favorite} is my favorite team too!!"
		sleep 1
		puts "Now, let's play the first match!!"
		puts "Are you ready?"
		puts "|  Yes  |  No  |"
		answer = gets.chomp
		if answer == "Yes"
			system "clear"
			puts "Great! Now let's create a match!"
			sleep 3
			#Run the #create_match method

		elsif answer == "No"
			system "clear"
			puts "Have a great day. Bye!"
			sleep 3
	
		else
			puts "Well '#{answer}' is not avalid answer"
			puts "Please enter Yes or No"
			puts "Ready?"
			puts "|  Yes  |  No  |"
			answer = gets.chomp
		end
	else
		system "clear"
		puts "Hey! What's the matter?"
		puts "Is your finger shaking?"
		sleep 2
		puts "#{favorite} is not a valid team!"
		puts "|  🖥  Please type the name as it apears on your screen  🖥  |"
		sleep 3
		SoccerTeam.all.each do |el|
			puts "  #{el.flag}  |  #{el.country}"
		end
		favorite = gets.chomp
	end
end
choose_team
