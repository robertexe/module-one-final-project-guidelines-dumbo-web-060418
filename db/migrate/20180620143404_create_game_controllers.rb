class CreateGameControllers < ActiveRecord::Migration[5.0]
  def change
    create_table :game_controllers do |t|
      t.integer :match_id
      t.integer :soccer_teams_id
      t.integer :fifas_id
      t.integer :user_id
    end
  end
end
