class System < ActiveRecord::Base
    has_many :availableons
    has_many :games, through: :availableons
end
