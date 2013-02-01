class AddProjectToTickets  < ActiveRecord::Migration
  def change
    # remove_column('tickets', 'project')
    # remove_column('tickets', 'project_id')
     add_column('tickets', 'project', :reference, {})
  end
end
