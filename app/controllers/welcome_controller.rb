class WelcomeController < ApplicationController	

	def index
    @causes = Cause.take(5)
  end
end