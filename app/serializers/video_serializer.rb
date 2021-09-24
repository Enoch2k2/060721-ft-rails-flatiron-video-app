class VideoSerializer < ActiveModel::Serializer
  attributes(:id, :title, :category, :genre, :length, :rating)

  has_many :reviews, serializer: ReviewSerializer
end
