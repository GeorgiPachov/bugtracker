class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password
      t.string :email
      t.integer :role
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
