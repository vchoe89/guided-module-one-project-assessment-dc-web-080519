class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |g|
      g.string :name
      g.string :category
    end
  end
end
