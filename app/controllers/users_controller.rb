class UsersController < ApplicationController

    def profile
        @user = User.find(params[:id])
        render json: @user
    end 

end
