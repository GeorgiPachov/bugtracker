class Ticket < ActiveRecord::Base
  attr_accessible :assignee, :project, :status, :reported_by, :user, :title, :description, :updated_at,:project_id
  belongs_to :project
  belongs_to :user
  has_many :comments

  validates :assignee, :presence => true
  validates :status, :presence => true
  validates :reported_by, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
  validates :description, :length => { :in => 3..30 }
  self.per_page = 10
end
