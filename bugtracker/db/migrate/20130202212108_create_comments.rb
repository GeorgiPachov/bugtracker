class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :user
      t.references :ticket

      t.timestamps
    end
  end
end
