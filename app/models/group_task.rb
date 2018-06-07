class GroupTask < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks
  validates :name, presence: true
  validates :due_date, presence: true
  validates :due_date, :format => /(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/, :message => "^Date must be in the following format: mm/dd/yyyy"

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
