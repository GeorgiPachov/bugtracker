class Ticket < ActiveRecord::Base
  attr_accessible :assignee, :project, :status, :timestamp, :user, :title, :description
  belongs_to :project
  belongs_to :user
end
