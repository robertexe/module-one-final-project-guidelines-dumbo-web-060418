
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

  def each_round(result)
    if result == :win
      puts "User get a goal"
      SCORE[:user] += 1
    elsif result == :lose
      puts "rival team gets a goal"
      SCORE[:fifa] += 1
    end
  end

  def final_score(rps_match)

  end

<<<<<<< HEAD
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
        each_round(GAMEFLOW[:rock][rivals_choice])
      when 'paper', '2'
        puts "You chose     : Paper"
        puts "Computer chose: #{rivals_choice.capitalize}"
        each_round(GAMEFLOW[:paper][rivals_choice])
      when 'scissors', '3'
        puts "You chose     : Scissors"
        puts "Computer chose: #{rivals_choice.capitalize}"
        each_round(GAMEFLOW[:scissors][rivals_choice])
      else
        puts "Invalid choice!"
    end
  	if SCORE[:fifa] == 3
  		puts "Final score is User #{SCORE[:user]}  | Rival #{SCORE[:fifa]}"
  	elsif SCORE[:user] == 3
  		puts "Final score is User #{SCORE[:user]}  | Rival #{SCORE[:fifa]}"
  	else
  		puts "The score is currently User #{SCORE[:user]}  | Rival #{SCORE[:fifa]} "
  		play_match
  	end
  end
end
