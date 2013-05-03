class AddTimeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :time, :datetime
  end
end
