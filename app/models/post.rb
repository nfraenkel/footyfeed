class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :image, :time, :title, :user_id

  validates :description, :title, presence: { :message => "is a required field!"}
  validates_format_of :image, :with => %r{\.(gif|jpg|png)$}i, :message => 'must be a GIF!!'

  def user_name
    string = user.first.to_s + ' ' + user.last.to_s
    string if user
  end

  def user_email
    user.email if user
  end
end
