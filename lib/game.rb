class Game < ActiveRecord::Base
    has_many :gamesystems
    has_many :systems, through: :gamesystems
    belongs_to :category
end