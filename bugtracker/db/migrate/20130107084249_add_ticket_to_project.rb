class AddTicketToProject < ActiveRecord::Migration
  def self.up
    add_column :tickets, :project_id, :integer
  end
  
  def self.down
    remove_column :users, :project_id
  end
end
