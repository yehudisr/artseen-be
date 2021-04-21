class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email

  has_many :event_listings
  # belongs_to :event
end
