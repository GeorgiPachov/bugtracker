class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.User :user
      t.Project :project
      t.TicketStatus :status
      t.User :assignee
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
