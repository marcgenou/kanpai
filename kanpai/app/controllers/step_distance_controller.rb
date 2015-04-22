class StepDistanceController < ApplicationController
  def index
    @city_name = params[:city_name]

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


    @local_distance_price = Geocoder::Calculations.distance_between(@city_name, @local_travel, :units => :km) * Rails.application.config.local_travel_multiplier
    @national_distance_price = Geocoder::Calculations.distance_between(@city_name, @national_travel, :units => :km) * Rails.application.config.national_travel_multiplier
    @continental_distance_price = Geocoder::Calculations.distance_between(@city_name, @continental_travel, :units => :km) * Rails.application.config.continental_travel_multiplier
    @exotic_distance_price = Geocoder::Calculations.distance_between(@city_name, @exotic_travel, :units => :km) * Rails.application.config.exotic_travel_multiplier
  end
end
