class Comment < ActiveRecord::Base
  attr_accessible :comment, :ticket, :user
  belongs_to :ticket
  belongs_to :user
end
