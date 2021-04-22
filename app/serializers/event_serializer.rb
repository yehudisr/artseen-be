class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :date_to_display, :location
  has_many :comments

def date_to_display
    object.date.strftime("%A, %B %d | %I:%M %P")
end

end
