class StepDistanceController < ApplicationController
  def index
  env['HTTP_X_REAL_IP'] = '83.56.16.252' if Rails.env.development?
  location = request.location
  	if params[:city_name].blank?
  		@city_name = request.location.city
  	else
  		@city_name = params[:city_name]
  	end
    local = Experience.near(@city_name, 50, :units => :km)
    national = Experience.near(@city_name, 600, :units => :km)
    continental = Experience.near(@city_name, 4000, :units => :km)
    exotic = Experience.near(@city_name, 20000, :units => :km)

    exotic -= continental
    @exotic_travel = exotic.sample

    continental -= national
    @continental_travel = continental.sample

    national -= local
    @national_travel = national.sample

    @local_travel = local.sample
    

    # #distance_price
    # Rails.logger.info "================"
    # p @local_travel.title
    # p @city_name 


    @local_distance_price = Geocoder::Calculations.distance_between(@city_name, @local_travel, :units => :km) * 0.55
    @national_distance_price = Geocoder::Calculations.distance_between(@city_name, @national_travel, :units => :km) * 0.11 + 20
    @continental_distance_price = Geocoder::Calculations.distance_between(@city_name, @continental_travel, :units => :km) * 0.09 +35
    @exotic_distance_price = Geocoder::Calculations.distance_between(@city_name, @exotic_travel, :units => :km) * 0.07 + 110
  end
end
