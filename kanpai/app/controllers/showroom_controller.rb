class ShowroomController < ApplicationController
  def index
  	env['HTTP_X_REAL_IP'] = '83.56.16.252' if Rails.env.development?
  	location = request.location
  	@experiences = Experience.order(:title)


    @world_cities = WorldCity.all
  end
end
