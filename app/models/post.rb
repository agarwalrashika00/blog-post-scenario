class Post < ApplicationRecord

  has_many :user_posts
  has_many :users, through: :user_posts
  has_many :comments, as: :commentable
  has_many :follow, as: :followable
  has_many :followers, through: :follow

end