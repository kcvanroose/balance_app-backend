class TasksController < ApplicationController

    def update
        @task = Task.find(params["id"])
        @task.update(task_params)
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            render json: @task, status: :accepted
        else
            render json: @task.errors.full_messages
        end
    end

    private

    def task_params
        params.permit(:completed, :due_date, :id, :description, :project_id)
    end

end