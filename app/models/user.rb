class User < ApplicationRecord
    has_many :event_listings
    has_many :events, through: :event_listings
    has_many :comments
end
