class WelcomeController < ApplicationController	

	def index
    @causes = Cause.take(5)

    @coder = Coder.new
    @do_gooder = DoGooder.new
  end
end