class DoGoodersController < ApplicationController
	def index
	end

	def new
		@do_gooder = DoGooder.new
	end

	def create
		@do_gooder = DoGooder.new(do_gooder_params)

		if @do_gooder.save
			session[:id] = @do_gooder.id
			params[:id] = @do_gooder.id
			redirect_to @do_gooder
		else
			redirect_to :back
		end
		
	end

	def show
		@do_gooder = DoGooder.find(params[:id])
		@current_user = @do_gooder
	end

	private

	def do_gooder_params
		params.require(:do_gooder).permit(:name, :email, :picture, :title)
	end
end
