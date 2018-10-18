class ApiController < ApplicationController
		 skip_before_action :authenticate_user!
		 skip_before_action :verify_authenticity_token
  def about

  	render json: 
  	{name: 'Ilona', date: Time.now.strftime("%d-%m-%Y"),
  	 time: Time.now.strftime("%H:%M"), fruits: ['Apple, Banana, Pineapple']}  		
  		
  end


  def haiku
  	render json: { haiku: reverse(haiku_params[:haiku]), name: haiku_params[:name].upcase}
  end 

  def haiku_params
  	params.permit(:name, :haiku)
  end

  def reverse(haiku)
  	haiku.split(' ').reverse.join(' ')
  end 

end
