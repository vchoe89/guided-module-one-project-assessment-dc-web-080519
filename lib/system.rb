class System < ActiveRecord::Base
    has_many :gamessystems
    has_many :games, through: :gamessystems
end
