class RemoveTimestampFromProjects < ActiveRecord::Migration
  def up
    remove_column("projects","timestamp");
  end

  def down
    add_column("projects","timestamp","datetime");
  end
end
