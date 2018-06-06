class GroupTasksController < ApplicationController
  before_action :authenticate_user!


  def index
    @group_tasks = GroupTask.all
  end

  def new
    @group_task = GroupTask.new
    @task = Task.new
  end

  def create
    @group_task = GroupTask.new(group_task_params)
    if @group_task.save
      redirect_to group_task_path(@group_task)
    else
      render :new
    end
  end

  def show
    @group_task = GroupTask.find_by(id: params[:id])
    @tasks = @group_task.tasks
  end


  private
    def group_task_params
      params.require(:group_task).permit(:name, :due_date, :task => [:name, :user_id])
    end

end
