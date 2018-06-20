require_relative "../lib/soccer_teams.rb"

SoccerTeam.create(country: 'Colombia', team_colors: 'yellow/white', flag: "🇨🇴", active: true)
SoccerTeam.create(country: 'Mexico', team_colors: 'green/white', flag: "🇲🇽", active: true)
SoccerTeam.create(country: 'Russia', team_colors: 'red/white', flag: "🇷🇺", active: true)
SoccerTeam.create(country: 'Germany', team_colors: 'white/black', flag: "🇩🇪", active: true)
SoccerTeam.create(country: 'Argenitna', team_colors: 'blue/white', flag: "🇦🇷", active: true)
SoccerTeam.create(country: 'Brazil', team_colors: 'yellow/white', flag: "🇧🇷", active: true)
SoccerTeam.create(country: 'Spain', team_colors: 'red', flag: "🇪🇸", active: true)
SoccerTeam.create(country: 'Portugal', team_colors: 'yellow/white', flag: "🇵🇹", active: true)

Match.create(match_name_id: 1, match_name: "First Round Match 01", team_one_id: 1, team_one_name: "🇨🇴 Colombia", team_two_id: 2, team_two_name: "🇲🇽 Mexico", match_location: "Samara Arena", match_winner: "🇲🇽 Mexico")
Match.create(match_name_id: 2, match_name: "First Round Match 02", team_one_id: 3, team_one_name: "🇷🇺 Russia", team_two_id: 4, team_two_name: "🇩🇪 Germany", match_location: "Ekaterinburg Arena", match_winner: "🇩🇪 Germany")
Match.create(match_name_id: 3, match_name: "First Round Match 03", team_one_id: 5, team_one_name: "🇦🇷 Argentina", team_two_id: 6, team_two_name: "🇧🇷 Brazil", match_location: "Luzhniki Stadium", match_winner: "🇦🇷 Argentina")
Match.create(match_name_id: 4, match_name: "First Round Match 04", team_one_id: 7, team_one_name: "🇪🇸 Spain", team_two_id: 8, team_two_name: "🇵🇹 Portugal", match_location: "Nizhny Novgorod Stadium", match_winner: "🇪🇸 Spain")
Match.create(match_name_id: 5, match_name: "Semi Finals Match 01", team_one_id: 2, team_one_name: "🇲🇽 Mexico", team_two_id: 4, team_two_name: "🇩🇪 Germany", match_location: "Volgograd Arena", match_winner: "🇲🇽 Mexico")
Match.create(match_name_id: 6, match_name: "Semi Finals Match 02", team_one_id: 5, team_one_name: "🇦🇷 Argentina", team_two_id: 7, team_two_name: "🇪🇸 Spain", match_location: "Spartak Stadium", match_winner: "🇦🇷 Argentina")
Match.create(match_name_id: 7, match_name: "FINAL MATCH", team_one_id: 2, team_one_name: "🇲🇽 Mexico", team_two_id: 5, team_two_name: "🇦🇷 Argenitna", match_location: "Kaliningrad Stadium", match_winner: "🇲🇽 Mexico")
