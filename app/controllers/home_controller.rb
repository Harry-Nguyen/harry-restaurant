class HomeController < ApplicationController
  def index
  	section = params[:section]
  	if section
  		@foods = Food.where(section: section)
  	else
  		@foods = Food.all
  	end
  end

  def contact_us
  end
end
