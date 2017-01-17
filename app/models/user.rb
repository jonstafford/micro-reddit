class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, presence: true, length: { minimum: 4, maximum: 255 }
end
