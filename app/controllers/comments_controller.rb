class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order('updated_at DESC')
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @help_request = HelpRequest.find(params[:help_request_id])
    @comment.help_request = @help_request

    if @comment.save
      redirect_to help_request_path(@help_request)
    else
      render :new
    end
  end

  def new
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
