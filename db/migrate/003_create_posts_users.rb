class CreatePostsUsers < ActiveRecord::Migration
  def change
    create_table :posts_users do |t|
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end