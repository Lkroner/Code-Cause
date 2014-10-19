class UsersController < ApplicationController
  def redirect
    @user = User.find_by_email(params[:email])
    # user exists
    if  @user && @user.authenticate(params[:password])
      session[:id] = @user.id
      if @user.type == "Coder"
        redirect_to coder_path(@user)
      else
        redirect_to do_gooder_path(@user)
      end
    else # user doesn't exist
      redirect_to :back
    end
  end
end
