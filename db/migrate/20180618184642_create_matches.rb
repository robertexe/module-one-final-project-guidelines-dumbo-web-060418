class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :match do |t|
      t.string :team_one
      t.string :team_two
      t.string :match_date
      t.integer :match_score
      t.string :stadium
    end
  end
end
