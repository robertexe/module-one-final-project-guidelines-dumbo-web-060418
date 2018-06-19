class CreateSoccerTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :soccer_teams do |t|
      t.string :country
      t.string :team_colors
      t.string :flag
      t.boolean :active
    end
  end
end
