class HomeController < ApplicationController
  def index
  	section = params[:section]
  	sort = params[:sort]

  	if section
  		@foods = Food.where(section: section)
  	else
  		@foods = Food.all
  	end

  	if sort
		case sort
			when 'alphabetical'
				@foods = @foods.order('name asc')
			when 'low2high'
				@foods = @foods.order('price asc')
			when 'high2low'
				@foods = @foods.order('price desc')
		end
  	end

  end

  def contact_us
  end
end
