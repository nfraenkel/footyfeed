class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :image, :time, :title, :user_id

  def user_name
    user.email if user
  end
end
