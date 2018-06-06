class GroupTask < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks

  def task=(task_attributes)
    if task_attributes[:name].present?
        task = Task.create(task_attributes)
        self.tasks << task
      end
  end

end
