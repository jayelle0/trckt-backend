class  Api::V1::ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end

    def show
        client = Client.find(params[:id])
        render json: client 
      end
  
    def create 
        client = Client.create(client_params)
        render json: client

    end 

    def destroy
        client = Client.find(params[:id])
        client.destroy!
        render json: {}
      end
    
      def update
        client = Client.find(params[:id])
        client.update!(client_params)
        render json: client
      end



    private

    def client_params
        params.require(:client).permit(:name, :email, :address, :phone, :user_id)
    end 
end
