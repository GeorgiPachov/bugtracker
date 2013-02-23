class TicketStatus < ActiveRecord::Base
  attr_accessible :status
  validates :status, { :presence => true, :uniqueness => true } 
  self.per_page = 10
end
