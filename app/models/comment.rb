class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :contents, presence: true
end
