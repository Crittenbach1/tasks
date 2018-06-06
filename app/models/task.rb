class Task < ApplicationRecord
  belongs_to :user
  belongs_to :group_task
end
