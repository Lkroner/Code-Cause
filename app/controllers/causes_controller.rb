class CausesController < ApplicationController

  def index
    if params[:search]
      @causes = Cause.search(params[:search]).order("created_at DESC")
    else
      @causes = Cause.order("created_at DESC")
    end
  end

  def new
    @cause = Cause.new
    render action: 'new', layout: false
  end

  def create
  end

  def edit
  end

  def update
  end

  def show

  end

  def destroy
  end
end
