class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user
      t.integer :project
      t.string :status
      t.integer :assignee
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
