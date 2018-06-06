class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group_task

  def self.status(task)
     if  task.status == true
        return "Status: Complete"
     else
        return "Status: In Progress"
     end
  end

end
