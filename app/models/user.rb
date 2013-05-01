class User < ActiveRecord::Base
  attr_accessible :active, :email, :first, :last
end
