class Ticket < ActiveRecord::Base
  attr_accessible :assignee, :project_id, :status, :reported_by, :user, :title, :description, :updated_at
  belongs_to :project
  belongs_to :user
  has_many :comments

  self.per_page = 10
end
