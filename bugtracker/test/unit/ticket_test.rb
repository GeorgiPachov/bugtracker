require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "validations" do
  # validates :assignee, :presence => true
  # validates :status, :presence => true
  # validates :reported_by, :presence => true
  # validates :user, :presence => true
  # validates :title, :presence => true
  # validates :description, :presence => true
  # validates :description, :length => { :in => 3..30 }
  # Test validations constraints
    test_ticket = {:assignee => ''}
    assert !Ticket.new(test_ticket).save

    test_ticket[:status] = ''
    assert !Ticket.new(test_ticket).save

    test_ticket[:reported_by]  = ''
    assert !Ticket.new(test_ticket).save

    # Test foreign key constaints
    test_ticket[:assignee] = 'No foreign key'
    assert !Ticket.new(test_ticket).save

    test_ticket[:status] = 'No foreign key'
    assert !Ticket.new(test_ticket).save

    test_ticket[:reported_by] = 'No foreign key again'
    assert !Ticket.new(test_ticket).save

    #Test all is well
    test_ticket[:assignee] = User.all.first.id
    test_ticket[:status] = TicketStatus.all.first
    test_ticket[:reported_by] = User.all.first.id

    test_ticket[:title] = 'Test Ticket'
    test_ticket[:description] = 'Test descritpion'
    assert Ticket.new(test_ticket).save
  end
end
