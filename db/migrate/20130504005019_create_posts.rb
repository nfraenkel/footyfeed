class CreatePosts < ActiveRecord::Migration
  def change
    drop_table :posts
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :image
      t.datetime :time
      t.belongs_to :user

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
