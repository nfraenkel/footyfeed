class Post < ActiveRecord::Base
  attr_accessible :title

  validates :title, presence: { :message => "These fields are required!"}
end
