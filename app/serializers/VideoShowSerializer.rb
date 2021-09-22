class VideoShowSerializer < ActiveModel::Serializer
  attributes(:id, :title, :category, :genre, :length, :rating)
end