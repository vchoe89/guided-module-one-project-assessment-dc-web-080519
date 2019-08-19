class Availableon < ActiveRecord::Migration[5.2]
  def change
    create_table :availableon do |a|
      a.integer :games_id
      a.integer :system_id
    end
  end
end
