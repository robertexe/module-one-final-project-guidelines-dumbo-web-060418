class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :team_one_id
      t.integer :team_two_id
    end
  end
end
