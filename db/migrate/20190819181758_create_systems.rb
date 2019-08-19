class CreateSystem < ActiveRecord::Migration[5.2]
  def change
    create_table :system do |s|
      s.string :name
    end
  end
end
