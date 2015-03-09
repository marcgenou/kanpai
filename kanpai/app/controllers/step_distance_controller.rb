class StepDistanceController < ApplicationController
  def index
  env['HTTP_X_REAL_IP'] = '83.56.16.252' if Rails.env.development?
  location = request.location
  	if params[:city_name].blank?
  		@city_name = request.location.city
  	else
  		@city_name ||= params[:city_name]
  	end
  	@locations = Experience.near(@city_name, 20, :units => :km)
  end
end
