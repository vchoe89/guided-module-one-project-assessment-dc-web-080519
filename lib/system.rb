class System < ActiveRecord::Base
    has_many :gamesystems
    has_many :games, through: :gamesystems
end
