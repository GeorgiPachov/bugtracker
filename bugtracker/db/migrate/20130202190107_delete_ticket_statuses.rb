class DeleteTicketStatuses < ActiveRecord::Migration
  def up
    drop_table :ticket_statuses
  end

  def down
  end
end
