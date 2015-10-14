class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    # @comment = Comment.find(params[:comment_id])
  end

  def new
    respond_to do |format|
      format.js
    end
  end


  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      # redirect_to @commentable
      # redirect_to link_path(params[:id])
      # render :template 'links/show'

    else
    end
  end

private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
