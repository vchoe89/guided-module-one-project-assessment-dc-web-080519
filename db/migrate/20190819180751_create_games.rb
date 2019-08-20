class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |g|
      g.string :name
      g.string :category
      g.integer :categories_id
    end
  end
end
