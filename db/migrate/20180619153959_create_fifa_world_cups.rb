class CreateFifaWorldCups < ActiveRecord::Migration[5.0]
  def change
    create_table :fifa_world_cups do |t|
      t.string :name
      t.string :matches
      t.string :grand_prize
      t.string :country_hosting
    end
  end
end
