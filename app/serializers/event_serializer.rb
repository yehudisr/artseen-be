class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :date, :location
  has_many :comments
end
