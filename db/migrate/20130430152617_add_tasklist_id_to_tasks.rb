class AddTasklistIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :tasklist_id, :integer
  end
end
