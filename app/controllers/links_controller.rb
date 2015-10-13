class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :show, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @links = Link.all.order(:created_at => :desc).paginate(:page => params[:page])
  end

  def show
    @comment = Comment.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.user = current_user
    if @link.save
      notice = "You made it"
      redirect_to @link
    else
      alert = "You not done it"
      render :new
    end
  end

  def edit
    
  end

  def update

  end

  def destroy

  end

  private

    def link_params
      params.require(:link).permit(:user_id, :url, :upvotes, :title)
    end

    def set_link
      @link = Link.find(params[:id])
    end
end
