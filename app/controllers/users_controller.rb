class UsersController < ApplicationController
   
    
    def create
        @user = User.create(user_params)
    end

    def index
        @users = User.all
        # render json: @users
    end

    def show
        @user = User.find(params[:id])
        # render json: @user
    end 

    def login
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
          # encode token comes from ApplicationController
          @token = encode_token({ user_id: @user.id })
          render json: { username: @user.username, token: @token }, status: :accepted
        else
          render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def validate
        user = current_user
        if user
            render json: {username: user.username, token: auth_header}
        else
            render json: {error: 'Validation failed.', status: 400}
        end
    end

    def user_projects
        @user = User.find(params[:id])
        @projects = @user.clients.map { |client| client.projects }
        render json: @projects.to_json
    end

    private
      def user_params
        params.require(:user).permit(:username, :password, :business_name, :name)
      end
end