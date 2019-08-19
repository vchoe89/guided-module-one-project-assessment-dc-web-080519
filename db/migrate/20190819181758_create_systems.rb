class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |s|
      s.string :name
    end
  end
end
