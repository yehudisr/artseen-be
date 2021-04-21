class UsersController < ApplicationController

    def profile
        @user = User.find(params[:id])
        render json: @user
    end 

    def login 
        @user = User.find_by(email: params[:email])
        if @user && @user.password_digest === params[:password]
            render json: @user
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end 
    end

    def create
        @user = User.create(email: params[:email], password: params[:password], firstname: params[:firstname], lastname: params[:lastname]) 
        render json: @user
    end 

end
