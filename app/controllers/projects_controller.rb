class ProjectsController < ApplicationController

    def update
        @project = Project.find(params["id"])
        @project.update(project_params)
    end

    def new
        @project = Project.new
    end


    def create
        @project = Project.new(project_params)
        if @project.save
            render json: @project, status: :accepted
        else
            render json: @project.errors.full_messages
        end
    end

    def delete
        @project = Project.find(params["id"])
        @project.destroy
        if @project
            render json: {status: "deleted"}
        else
            render json: {errors: @project.errors.full_messages}, status: :unprocessible_entity
        end
    end

    
    private

    def project_params
        params.permit(:completed, :end_date, :id, :description, :client_id, :time_spent, :start_date, :hourly_rate, :name, :fee)
    end

end