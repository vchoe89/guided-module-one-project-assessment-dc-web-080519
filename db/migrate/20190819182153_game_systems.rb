class GameSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :gamesystems do |a|
      a.integer :game_id
      a.integer :system_id
    end
  end
end
