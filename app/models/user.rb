class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  def last_three_posts
    posts.last(3)
  end

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
