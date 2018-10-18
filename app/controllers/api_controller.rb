class ApiController < ApplicationController
		 skip_before_action :authenticate_user!
  def about

  		render json: 
  		{name: 'Ilona', date: Time.now.strftime("%d-%m-%Y"),
  		 time: Time.now.strftime("%H:%M"), fruits: ['Apple, Banana, Pineapple']}  		
  		
  end
end
