class UsersController < ApplicationController

    def index
        @users = User.all
        # render json: @users
    end

    def show
        @user = User.find(params[:id])
        # render json: @user
    end 

    def user_projects
        @user = User.find(params[:id])
        @projects = @user.clients.map { |client| client.projects }
        render json: @projects.to_json
    end
end