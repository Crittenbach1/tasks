class TasksController < ApplicationController
  before_action :authenticate_user!


    def index
      @user_tasks = []
      Task.all.each do |t|
         if t.user_id == params[:user_id].to_i
            @user_tasks << t
         end
      end
    end

    def new
      @group_task = GroupTask.find_by(id: params[:group_task_id])
      if @group_task
        @task = @group_task.tasks.build
      else
        redirect_to group_tasks_path
      end
    end

    def create
      @group_task = GroupTask.find_by(id: params[:group_task_id])
      @task = @group_task.tasks.build(task_params)
      if @task.save
        redirect_to group_task_path(@group_task)
      else
        render :new
      end
    end


    def edit
      @task = Task.find(params[:id])
    end

    def update
     @task = Task.find(params[:id])
     if @task.status == false
        @task.status = true
     else
       @task.status = false
     end
     @task.save
     redirect_to root_path
    end

    def destroy
      @task = Task.find(params[:id])
      @task.delete
      redirect_to root_path
    end

      private
        def task_params
          params.require(:task).permit(:name, :user_id)
        end

end
