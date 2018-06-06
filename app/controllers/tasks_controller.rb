class TasksController < ApplicationController
  before_action :authenticate_user!


    def index

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

    end

      private
        def task_params

        end

end
