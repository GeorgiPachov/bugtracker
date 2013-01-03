class Ticket < ActiveRecord::Base
  attr_accessible :assignee, :project, :status, :timestamp, :user
end
