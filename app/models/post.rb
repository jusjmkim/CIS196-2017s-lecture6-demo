class Post < ActiveRecord::Base
  has_many :posts_users, dependent: :destroy
  has_many :users, through: :posts_users
end
