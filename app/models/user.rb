class User < ActiveRecord::Base
  has_many :posts_users, dependent: :destroy
  has_many :posts, through: :posts_users
end
