class Game < ActiveRecord::Base
    has_many :availableons
    has_many :systems, through: :availableons
end