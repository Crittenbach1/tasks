class GroupTasksController < ApplicationController
  before_action :authenticate_user!


  def index
    @group_tasks = GroupTask.all
  end

  def new
    @group_task = GroupTask.new 
  end

  def create
  end


  private
    def group_task_params

    end

end
