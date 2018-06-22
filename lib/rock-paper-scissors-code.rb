##create class variable with a hash of score
##create another class to controll the flow of the method

SCORE = { :fifa => 0, :user => 0, :draws => 0 }

##

GAMEFLOW = {
  :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win},
  :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose},
  :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
}

def game_controller_chooses ## RETURNS  either rock paper or scissors
  choice = rand(1..3)
  if choice == 1
    emoji = "👊"
		choice = :rock
	elsif choice == 2
    emoji = "🖐"
		choice = :paper
	elsif choice == 3
    emoji = "✌️"
		choice = :scissors
	end
end

def each_round(result)
  if result == :win
    puts "🤪 🤪 🤪 Your team made a goal 😎 😎 😎".green
    SCORE[:user] += 1
  elsif result == :lose
    puts "😱 😱 😱 The rival's team made a goal 😭 😭 😭".red
    SCORE[:fifa] += 1
  elsif result == :draws
    puts "🙅 🙅 🙅 THIS GAME HAS NO DRAWS! 🙅 🙅 🙅".red
  end
end

def final_score(rps_match)

end

def play_match
  puts "Please select one of the nest options:".green
  puts "👊  Rock (1)".blue
  puts "🖐  Paper (2)".blue
  puts "✌️  Scissors (3)".blue
  rivals_choice = game_controller_chooses
  case gets.chomp.to_s.downcase
    when 'rock', '1'
      system "clear"
      puts GameController.bulletin_board.blue
      puts "You chose     : Rock 👊".green
      puts "Your rival chose: #{rivals_choice.capitalize} - #{puts_emoji(rivals_choice)}".blue
      each_round(GAMEFLOW[:rock][rivals_choice])
    when 'paper', '2'
      system "clear"
      puts GameController.bulletin_board.blue
      puts "You chose     : Paper 🖐".green
      puts "Computer chose: #{rivals_choice.capitalize} - #{puts_emoji(rivals_choice)}".blue
      each_round(GAMEFLOW[:paper][rivals_choice])
    when 'scissors', '3'
      system "clear"
      puts GameController.bulletin_board.blue
      puts "You chose     : Scissors ✌️".green
      puts "Computer chose: #{rivals_choice.capitalize} - #{puts_emoji(rivals_choice)}".blue
      each_round(GAMEFLOW[:scissors][rivals_choice])
    else
      puts "Invalid choice!".red
  end
	if SCORE[:fifa] == 3
		puts "Final score is User #{SCORE[:user]}  | Rival #{SCORE[:fifa]}".yellow
	elsif SCORE[:user] == 3
		puts "Final score is User #{SCORE[:user]}  | Rival #{SCORE[:fifa]}".yellow
	else
		puts "The score is currently User #{SCORE[:user]}  | Rival #{SCORE[:fifa]} ".green
		play_match
	end
end
#
def puts_emoji(emoji)
  if emoji == :rock
    "👊"
  elsif emoji == :paper
    "🖐"
  elsif emoji == :scissors
    "✌️"
  end
end
