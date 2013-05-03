class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :imageURL

      t.timestamps
    end
  end
end
