class Project < ActiveRecord::Base
  attr_accessible :name, :timestamp
  has_many :tickets, :dependent => :destroy
  validates :name, :length => { :in => 3..128 }
  self.per_page = 10
  
end
