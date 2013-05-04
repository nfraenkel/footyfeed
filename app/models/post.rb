class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :image, :time, :title, :user_id

  def user_name
    user.first + " " + user.last if user
  end
end
