class RemoveTimestampFromTickets  < ActiveRecord::Migration
  def change
    remove_column('tickets','timestamp')
  end
end
