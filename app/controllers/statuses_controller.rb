class StatusesController < ApplicationController

  def create
    status = Status.create(params[:status])
    if status.persisted?
      render :json => status, :status => :created
    else
      render :json => {:errors => status.errors}, :status => :unprocessable_entity
    end
  end

  def index
    render :json => Status.descending
  end
end
