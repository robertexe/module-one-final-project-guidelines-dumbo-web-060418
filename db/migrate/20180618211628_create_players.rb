class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :team
      t.string :match
    end
  end
end
