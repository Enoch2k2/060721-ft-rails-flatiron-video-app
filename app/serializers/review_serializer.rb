class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :username

  belongs_to :user

  def username
    object.user.first_name + " " + object.user.last_name if object.user
  end
end
