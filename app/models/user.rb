class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :first, :last, :profimage

  validates :first, :last, presence: { :message => "is a required field!"}
  validates_format_of :profimage, :with => %r{\.(gif|jpg|png|jpeg)$}i, :message => 'must be a gif, jpg, png or jpeg!'

end
