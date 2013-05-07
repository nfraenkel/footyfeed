class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :image, :time, :title, :user_id

  validates :description, :title, :image, presence: { :message => "is a required field!"}

  def user_name
    string = user.first.to_s + ' ' + user.last.to_s
    string if user
  end

  def user_email
    user.email if user
  end
end
