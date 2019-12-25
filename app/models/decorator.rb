class Decorator < ApplicationRecord
    has_many :events, dependent: :destroy
    has_many :users, through: :events
    has_many :venues, through: :events
 
end
