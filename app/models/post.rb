class Post < ApplicationRecord
  has_many :post_users
  has_many :users, through: :post_users

  has_many :post_tags
  has_many :tags, through: :post_tags
end
