class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :videos, through: :reviews

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
end
