class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  scope :published, -> { where(published: true) }
  scope :not_published, -> { where(published: false) }
end
