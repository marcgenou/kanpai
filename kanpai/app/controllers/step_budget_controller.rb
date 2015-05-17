class StepBudgetController < ApplicationController
  def index
  	@city_name = params[:city_name]
  	@mychoice = Experience.find(params[:experience])
  	@mychoice_distance = params[:mychoice]
    @multiplier = params[:multiplier]

    local = Experience.near(@city_name, 50, :units => :km)
    national = Experience.near(@city_name, 600, :units => :km)
    continental = Experience.near(@city_name, 4000, :units => :km)
    exotic = Experience.near(@city_name, 20000, :units => :km)

    exotic -= continental

    continental -= national

    national -= local

  	@distance = Geocoder::Calculations.distance_between(@city_name, @mychoice, :units => :km)

		if @distance <= 50
			@locations = local
		elsif @distance > 50 && @distance <= 600
			@locations = national
		elsif @distance > 600 && @distance <= 4000
			@locations = continental
		elsif @distance > 4000 && @distance <= 20000
			@locations = exotic
		else
			p "I don't know how you get there"
		end
			
		#@locations = Experience.near(@mychoice, 50, :units => :km)
		@locations -= [*@mychoice]
		#@locations = @locations.sort_by {|location| location.price}
		#@locations.in_groups(3, false)

    @budget_travel = @locations.select{ |location| location.price <= 100 }.sample
    @medium_travel = @locations.select{ |location| location.price > 100 && location.price <= 1000}.sample
    @splurge_travel = @locations.select{ |location| location.price > 1000 }.sample

    @mychoice_distance_price = @mychoice_distance.to_f * params[:multiplier].to_f
    @budget_distance_price = Geocoder::Calculations.distance_between(@city_name, @budget_travel, :units => :km) * @multiplier.to_f
    @medium_distance_price = Geocoder::Calculations.distance_between(@city_name, @medium_travel, :units => :km) * @multiplier.to_f
    @splurge_distance_price = Geocoder::Calculations.distance_between(@city_name, @splurge_travel, :units => :km) * @multiplier.to_f  	  	
  end
end
