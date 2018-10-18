class ApiController < ApplicationController
		 skip_before_action :authenticate_user!
  def about

  		render json: 
  		{Name: 'Ilona', Date: Time.now.strftime("%d-%m-%Y"),
  		 Time: Time.now.strftime("%H:%M"), Fruits: 'Apple, Banana'}  		
  		
  end
end
