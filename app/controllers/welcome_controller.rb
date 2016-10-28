class WelcomeController < ApplicationController
  def index
  	num = 10
  	@x = "Hello #{num} World"
  end
end
