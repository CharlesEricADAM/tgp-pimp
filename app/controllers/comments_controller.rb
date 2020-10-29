# class CommentsController < ApplicationController
#   def new
#     @comment = Comment.new
#   end

#   def index
#     @comments = Comment.all
#   end

#   def show
#     @comment = Comment.find(params[:id])
#   end

#   def edit
#     @comment = Comment.find(params[:id])
#   end

#   def create
#     @comment = Comment.create(comment_params)
#     redirect_to comment_path(comment.id)
#   end

#   def update
#     @comment = Comment.find(params[:id])
#     @comment.update(comment_params)
#     redirect_to comments_path
#   end

#   def destroy
#     @comment = Comment.find(params[:id])
#     @comment.destroy
#     redirect_to comments_path
#   end
# end
