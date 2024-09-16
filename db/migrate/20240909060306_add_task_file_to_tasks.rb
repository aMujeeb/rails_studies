class AddTaskFileToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :task_file, :text
  end
end
