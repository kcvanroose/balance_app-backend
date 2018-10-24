class ClientsController < ApplicationController

    def update
        @client = Client.find(params["id"])
        @client.update(client_params)
    end

    def new
        @client = Client.new
    end


    def create
        @client = Client.new(client_params)
        if @client.save
            render json: @client, status: :accepted
        else
            render json: @client.errors.full_messages
        end
    end

    private

    def client_params
        params.permit(:contact, :phone_number, :id, :email_address, :user_id, :name)
    end

end