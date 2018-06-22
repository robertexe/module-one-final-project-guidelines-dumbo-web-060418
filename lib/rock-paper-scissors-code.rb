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
		choice = :rock
	elsif choice == 2
		choice = :paper
	elsif choice == 3
		choice = :scissors
	end
end

def win_or_lose(result)
  if result == :win
    puts "User get a goal"
    SCORE[:user] += 1
  elsif result == :lose
    puts "rival team gets a goal"
    SCORE[:fifa] += 1
  end
end

def play_match
  puts '
  |---------------------------------|
  |        FIFA  |  RPS
  |---------------------------------|
  '
  puts "Enter choice: Rock (1), Paper (2), or Scissors (3)"
  rivals_choice = game_controller_chooses
  case gets.chomp.to_s.downcase
    when 'rock', '1'
      puts "You chose     : Rock"
      puts "Your rival chose: #{rivals_choice.capitalize}"
      win_or_lose(GAMEFLOW[:rock][rivals_choice])
    when 'paper', '2'
      puts "You chose     : Paper"
      puts "Computer chose: #{rivals_choice.capitalize}"
      win_or_lose(GAMEFLOW[:paper][rivals_choice])
    when 'scissors', '3'
      puts "You chose     : Scissors"
      puts "Computer chose: #{rivals_choice.capitalize}"
      win_or_lose(GAMEFLOW[:scissors][rivals_choice])
    else
      puts "Invalid choice!"
  end
  puts "The score is currently User #{SCORE[:user]}  | Rival #{SCORE[:fifa]} "

	if SCORE[:fifa] == 2 || SCORE[:user] == 2
		
	end



  # else
  #   puts "Your total score: #{SCORE[:user]}  |  Rivals total score: #{SCORE[fifa]}  |  Total draws: #{SCORE[:draws]}"
  #   puts "Thank you for playing!"
  # end
end

play_match
