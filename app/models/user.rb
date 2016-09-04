class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :email, presence: true

  has_many :posts
  has_many :comments
end
