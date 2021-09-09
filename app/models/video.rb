class Video < ApplicationRecord
  validates_presence_of :title, :length, :category, :genre
  validates_uniqueness_of :title

  def hello
    "hello"
  end
end
