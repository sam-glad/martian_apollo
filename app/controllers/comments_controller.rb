class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order('updated_at DESC')
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @help_request = HelpRequest.find(params[:help_request_id])
    @comment.help_request = @help_request

    if @comment.save
      flash[:notice] = "Your comment has been saved!"
    else
      flash[:notice] = "Oops. You didn't enter a comment!"
    end
    redirect_to help_request_path(@help_request)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
