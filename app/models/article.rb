class Article < ApplicationRecord
  validates :title, :body, :released_at, presence: true
  validates :title, length: { maximun: 80 }
  validates :body, length: { maximum: 2000 }
end
