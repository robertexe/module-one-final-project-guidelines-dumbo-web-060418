class CreateFifas < ActiveRecord::Migration[5.0]
  def change
    create_table :fifas do |t|
      t.integer :matches_id
    end
  end
end
