class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email

  has_many :events
end
