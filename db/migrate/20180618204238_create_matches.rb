class CreateMatches < ActiveRecord::Migration[5.0]
  def up
    create_table :matches do |t|
      t.string :match_date
      t.string :team_one
      t.integer :team_one_id
      t.string :team_two
      t.integer :team_two_id
      t.integer :match_score
      t.string :match_location
    end
  end
end
