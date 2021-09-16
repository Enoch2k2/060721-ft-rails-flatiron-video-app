class Video < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of :title, :length, :category, :genre
  validates_uniqueness_of :title
  validates_length_of :title, minimum: 8, maximum: 150
  validates_inclusion_of :category, in: ["Movie", "Show"]

  accepts_nested_attributes_for :reviews, reject_if: :all_blank

  def hello
    "hello"
  end
end
