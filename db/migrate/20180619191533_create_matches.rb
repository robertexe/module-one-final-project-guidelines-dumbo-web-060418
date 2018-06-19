class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :team_one_id
      t.string :team_one
      t.string :team_two_id
      t.string :team_two
      t.string :match_winner
    end
  end
end
