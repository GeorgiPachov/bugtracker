class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamp :timestamp

      t.timestamps
    end
  end
end