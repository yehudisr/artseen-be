class User < ApplicationRecord
    has_secure_password
    has_many :event_listings
    has_many :events, through: :event_listings
    has_many :comments

    validates :email, uniqueness: { case_sensitive: false }

    
end
