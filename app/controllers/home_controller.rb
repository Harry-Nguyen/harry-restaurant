class HomeController < ApplicationController
  def index
  	@foods = Food.all
  end

  def contact_us
  end
end
