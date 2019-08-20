class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |g|
      g.string :name
      g.integer :category_id
    end
  end
end
