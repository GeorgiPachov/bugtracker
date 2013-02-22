class RemoveTimestampFromUser < ActiveRecord::Migration
  def up
    remove_column('users','timestamp')
  end

  def down
    add_column('user','timestamp','datetime')
  end
end
