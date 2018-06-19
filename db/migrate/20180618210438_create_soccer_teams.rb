class CreateSoccerTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :soccer_teams do |t|
      t.string :team_name
      t.string :jersey_home_colors
      t.string :jersey_away_colors
      t.string :team_country
      t.string :team_players
    end
  end
end
