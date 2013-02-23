require 'test_helper'

class TicketStatusTest < ActiveSupport::TestCase
  test "validations" do
    ticket_status = {} 
    assert !TicketStatus.new(ticket_status).save
    
    ticket_status[:status] = ''
    assert !TicketStatus.new(ticket_status).save
    
    ticket_status[:status] = TicketStatus.all.first
    assert TicketStatus.new(ticket_status).save
  end
end
