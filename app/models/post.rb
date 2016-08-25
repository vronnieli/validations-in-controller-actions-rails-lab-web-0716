class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_inclusion_of :category, in: %w[Fiction Non-Fiction]
  validates :content, length: { minimum: 100 }
end
