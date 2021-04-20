class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments
    end 
    def create
        @comment = Comment.create(content: params[:content], event_id: params[:event_id], user_id: params[:user_id])
        render json: @comment
    end 

    def show 
        @comment = Comment.find(params[:id])
        render json: @comment
    end

end
