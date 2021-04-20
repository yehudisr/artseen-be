class UsersController < ApplicationController

    def profile
        @user = User.find(params[:id])
        render json: @user
    end 

    def login 
        @user = User.find_by(email: params[:email])
        render json: @user
    end

    

end
