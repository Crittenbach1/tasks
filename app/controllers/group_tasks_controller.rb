class GroupTasksController < ApplicationController
  before_action :authenticate_user!


  def index
    @group_tasks = GroupTask.all
  end

  def new
    @group_task = GroupTask.new
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
  end


  private
    def group_task_params
      params.require(:group_task).permit(:name, :due_date, :task => [:user_id, :name])
    end

end
