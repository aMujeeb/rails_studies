class Task < ApplicationRecord
  belongs_to :project

  after_save :update_percent_complete if :mark_completed?

  scope :completed_tasks, -> { where(completed: true) }

  def mark_completed?  # returns True of Not null or not false
    self.completed == true
  end

  def update_percent_complete
    project = Project.find(self.project_id)
    count_of_completed_task = project.tasks.completed_tasks.count
    count_of_total_tasks = project.tasks.count
    project.update!(percent_complete: Counter.calculate_percent_complete(count_of_completed_task, count_of_total_tasks))
  end
  
end
