class CausesController < ApplicationController

	def index
		@causes = Cause.all
  end

  def new
		@cause = Cause.new
    render :action => 'new'
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