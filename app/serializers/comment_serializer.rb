class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :username

  def username
    object.user.firstname + " " + object.user.lastname
  end 
  # belongs_to :user
end
