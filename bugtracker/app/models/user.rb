class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :role, :timestamp, :username
end
