class CreateUserPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_posts do |t|
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
