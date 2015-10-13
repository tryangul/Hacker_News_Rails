class Comments::CommentsController < CommentsController
  before_action :set_commentable

  def new
    @comment = @commentable.comments.new
    respond_to do |format|
      format.js
    end
  end

  private
    def set_commentable
      @commentable = Comment.find(params[:comment_id])
    end
end
