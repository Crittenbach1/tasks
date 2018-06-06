class GroupTask < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks

  def task=(task_attributes)
    if task_attributes[:name].present?
        task = Task.create(task_attributes)
        self.tasks << task
      end
  end

  def self.group_task_progress(group_task)
    @all = group_task.tasks.length
    @num_completed = 0
    group_task.tasks.each do |t|
      if t.status == true
        @num_completed += 1
      end
    end
    @message = "#{@num_completed} out of #{@all} completed"

    @message
  end

end
