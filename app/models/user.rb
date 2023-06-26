class User < ApplicationRecord

  has_many :comments
  has_many :user_posts
  has_many :posts, through: :user_posts
  has_many :articles, -> {where(type: 'Article')}, class_name: 'Post'
  has_many :follow, foreign_key: :follower_id
  has_many :followers, class_name: 'Follow', as: :followable
  has_many :following_users, through: :follow, source: :followable, source_type: 'User'
  has_many :article_followers, through: :articles, source: :followers

end