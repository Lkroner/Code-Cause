class CodersController < ApplicationController
	def index
	end

	def new
		@coder = Coder.new
	end

	def create
		@coder = Coder.new(coder_params)

		if @coder.save
			session[:id] = @coder.id
			params[:id] = @coder.id
			redirect_to @coder
		else
			redirect_to :back
		end
		
	end

	def show
		@coder = Coder.find(params[:id])
	end

	private

	def coder_params
		params.require(:coder).permit(:name, :email, :picture, :title)
	end
end
