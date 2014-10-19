class WelcomeController < ApplicationController

  def index
    @causes = Cause.take(5)
  end

  def signup
    @coder = Coder.new
    @do_gooder = DoGooder.new
  end

  def login
  end

  def logout
    session[:id] = nil

    redirect_to root_path
  end
end
