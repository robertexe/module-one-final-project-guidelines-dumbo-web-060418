require_relative "../lib/soccer_teams.rb"

SoccerTeam.create(country: 'Colombia', team_colors: 'yellow/white', flag: "🇨🇴", active: true)
SoccerTeam.create(country: 'Mexico', team_colors: 'green/white', flag: "🇲🇽", active: true)
SoccerTeam.create(country: 'Russia', team_colors: 'red/white', flag: "🇷🇺", active: true)
SoccerTeam.create(country: 'Germany', team_colors: 'white/black', flag: "🇩🇪", active: true)
SoccerTeam.create(country: 'Argenitna', team_colors: 'blue/white', flag: "🇦🇷", active: true)
SoccerTeam.create(country: 'Brazil', team_colors: 'yellow/white', flag: "🇧🇷", active: true)
SoccerTeam.create(country: 'Spain', team_colors: 'red', flag: "🇪🇸", active: true)
SoccerTeam.create(country: 'Portugal', team_colors: 'yellow/white', flag: "🇵🇹", active: true)

Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 1", match_location: "Samara Arena", team_one_id: 1, team_two_id: 2, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 2", match_location: "Ekaterinburg Arena", team_one_id: 3, team_two_id: 4, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 3", match_location: "Luzhniki Stadium", team_one_id: 5, team_two_id: 6, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 4", match_location: "Nizhny Novgorod Stadium", team_one_id: 7, team_two_id: 8, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 5", match_location: "Volgograd Arena", team_one_id: 1/2, team_two_id: 3/4, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 6", match_location: "Spartak Stadium", team_one_id: 5/6, team_two_id: 7/8, match_score: nil, match_winner: nil)
Match.new(name_id: "FIFA World Cup 2018", match_id: "Match 7", match_location: "Kaliningrad Stadium", team_one_id: 1/2/3/4, team_two_id: 5/6/7/8, match_score: nil, match_winner: nil)


"Samara Arena"
"Ekaterinburg Arena"
"Luzhniki Stadium"
"Nizhny Novgorod Stadium"
"Volgograd Arena"
"Spartak Stadium"
"Kaliningrad Stadium"
