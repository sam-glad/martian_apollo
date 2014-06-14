class HelpRequestsController < ApplicationController
  def index
    @help_requests = HelpRequest.all.order('updated_at DESC')
  end

  def show
    @help_request = HelpRequest.find(params[:id])
  end

  def new
  end

  def create
  end
end
