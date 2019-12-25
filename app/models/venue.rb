class Venue < ApplicationRecord
    has_many :events, dependent: :destroy
    has_many :users, through: :events
    has_many :decorators, through: :events

end
