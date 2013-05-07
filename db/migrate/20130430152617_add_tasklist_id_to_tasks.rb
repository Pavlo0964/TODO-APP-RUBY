class AddTasklistIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :Tasklist_id, :integer
  end
end
