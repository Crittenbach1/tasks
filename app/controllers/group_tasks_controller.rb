class GroupTasksController < ApplicationController
  before_action :authenticate_user!


  def index
    @group_tasks = GroupTask.all
  end


  private
    def group_task_params
    end

end
