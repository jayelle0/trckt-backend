class  Api::V1::UsersController < ApplicationController
    # wrap_parameters :user, include: [:username, :password, :email, :name]
    # skip_before_action :authorized

    # def profile 
    #     render json: {user: current_user}, status: :accepted 
    # end 

    def index 
        users = User.all
        render json: users
    end

    def show
        recipe = User.find(params[:id])
        render json: user 
      end
  
    def create 
        user = User.create(user_params)
        render json: user 

        # if @user.valid?
        #   @token = encode_token(user_id: @user.id)
        #   render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        # else
        #   render json: { error: user.errors.full_messages }, status: :not_acceptable
        # end
    end 

    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
      end
    
      def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
      end



    private

    def user_params
        params.require(:user).permit(:name, :email, :address, :password, :password_confirmation, :phone)
    end 


end
