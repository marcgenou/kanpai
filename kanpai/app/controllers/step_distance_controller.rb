class StepDistanceController < ApplicationController
  def index
  env['HTTP_X_REAL_IP'] = '83.56.16.252' if Rails.env.development?
  location = request.location
  	if params[:city_name]
  		@city_name ||= params[:city_name]
  	else
  		@city_name = request.location.city
  	end
  end
end
