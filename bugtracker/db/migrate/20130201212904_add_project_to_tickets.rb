class AddProjectToTickets  < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.references :project
    end
  end
end
