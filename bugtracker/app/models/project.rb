class Project < ActiveRecord::Base
  attr_accessible :name, :timestamp
  has_many :tickets, :dependent => :destroy
end
