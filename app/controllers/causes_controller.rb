class CausesController < ApplicationController

  def index
    @causes = Cause.all
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
    @cause = Cause.find(params[:id])
  end

  def destroy
  end
end
