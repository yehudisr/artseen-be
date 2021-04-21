class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email

  has_many :events
  has_many :event_listings
end
