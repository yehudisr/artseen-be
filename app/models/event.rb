class Event < ApplicationRecord
    has_many :event_listings
    has_many :users, through: :event_listings
    has_many :comments
end
