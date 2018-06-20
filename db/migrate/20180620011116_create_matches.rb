class CreateMatches < ActiveRecord::Migration[5.0]
  def up
    create_table :matches do |t|
      t.string :name_id
      t.string :match_id
      t.string :match_location
      t.integer :team_one_id
      t.integer :team_two_id
      t.integer :match_score
      t.string :match_winner
    end
  end
end
