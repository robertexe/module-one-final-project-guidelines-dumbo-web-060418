class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :match_name_id
      t.string :match_name
      t.integer :team_one_id
      t.string :team_one_name
      t.integer :team_two_id
      t.string :team_two_name
      t.string :match_location
      t.string :match_winner
    end
  end
end
