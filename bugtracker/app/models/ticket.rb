class Ticket < ActiveRecord::Base
  attr_accessible :assignee, :project_id, :status, :reported_by, :user, :title, :description
  belongs_to :project
  belongs_to :user
end
