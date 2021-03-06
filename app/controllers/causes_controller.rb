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
    @cause = Cause.find(params[:id])
  end

  def destroy
  end

  private

  def coder_params
    params.require(:coder).permit(:name, :description, :picture, :help_needed)
  end
end
