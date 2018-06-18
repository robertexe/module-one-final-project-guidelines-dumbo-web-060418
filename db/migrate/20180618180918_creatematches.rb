class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table matches do |t|
      t.string :date
      t.string :team_one
      t.string :team_two
      t.integer :score
      t.string :stadium
    end
  end
end
