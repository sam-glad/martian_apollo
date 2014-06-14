class HelpRequestsController < ApplicationController
  def index
    @help_requests = HelpRequest.all.order('updated_at DESC')
  end

  def show
    @help_request = HelpRequest.find(params[:id])
    @comment = Comment.new
  end

  def create
    @help_request = HelpRequest.new(help_request_params)

    if @help_request.save
      flash[:notice] = "Help request sent!"
      redirect_to help_request_path(@help_request)
    else
      flash[:notice] = "Oops! Please enter a subject and description."
      render :new
    end
  end

  def new
    @help_request = HelpRequest.new
  end

  private

  def help_request_params
    params.require(:help_request).permit(
      :subject, :description, :searched, :problem)
  end

end
