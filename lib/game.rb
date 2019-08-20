class Game < ActiveRecord::Base
    has_many :gamessystems
    has_many :systems, through: :gamessystems
    belongs_to :category
end