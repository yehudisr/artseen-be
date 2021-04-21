class EventListingSerializer < ActiveModel::Serializer
  attributes :id, :saved, :seen, :booked, :event

  # belongs_to :event
end
