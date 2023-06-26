User
	-> can have article
	-> can have blog

Post
	-> Article
	-> Blog

Comment
	-> can be on both
	2 level nesting(parent, reply, reply ka reply)
	-> user

Follow
	-> can follow article as well blog as well ko comment


user ko follow 
user k article ko follow
user k blog ko follow
user k commnets ko follow

### make associtaion to fetch users who follow articles of a user

class Article 
	has_many :follow, as: :followable
  has_many :followers, through: :follow
end

class User
  has_many :articles, -> {where(type: 'Article')}, class_name: 'Post'
  has_many :article_followers, through: :articles, source: :followers
end
