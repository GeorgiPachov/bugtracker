class TicketStatus < ActiveRecord::Base
  attr_accessible :status

  self.per_page = 10
end
