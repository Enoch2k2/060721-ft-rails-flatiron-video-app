class Video < ApplicationRecord
  validates_presence_of :title, :length, :category, :genre
  validates_uniqueness_of :title
  validates_length_of :title, minimum: 8, maximum: 150
  validates_inclusion_of :category, in: ["Movie", "Show"]

  def hello
    "hello"
  end
end
