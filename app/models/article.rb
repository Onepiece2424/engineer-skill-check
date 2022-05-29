class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :title,    length: { maximum: 50 }
end
