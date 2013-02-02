module TicketsHelper
  def self.status_new
    "New"
  end
  
  def self.status_assigned
    "Assigned"
  end
  
  def self.status_resolved
    "Resolved"
  end
  
  def self.status_closed
    "Closed"
  end

  def self.assignee_none
    -1
  end
end
