class CreatePosts < ActiveRecord::Migration
  def change
    drop_table :posts
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.datetime :time

      t.timestamps
    end
  end
end
