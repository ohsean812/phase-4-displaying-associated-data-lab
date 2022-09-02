class UsersController < ApplicationController
    
    def show
        user = User.find(params[:id])
        render json: user, include: :items
    end

    
private

    def user_params
        params.permit(:username, :city)
    end

end
