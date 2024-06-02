class Comment < ApplicationRecord
  validates :body, presence: true
  validates :commenter, presence: true

  belongs_to :post
end
