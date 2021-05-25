class Event < ApplicationRecord
    has_many :event_listings
    has_many :users, through: :event_listings
    has_many :comments

    def date_to_display
        self.date.try(:strftime, ("%A, %B %d | %I:%M %P"))
    end
end
