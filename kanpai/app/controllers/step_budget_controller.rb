class StepBudgetController < ApplicationController
  def index
  	@city_name = params[:city_name]
  	@mychoice = Experience.find(params[:experience])
  	@mychoice_distance = params[:mychoice]

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
		elsif @distance.between?(50,600)
			@locations = national
		elsif @distance.between?(600,4000)
			@locations = continental
		elsif @distance.between?(4000,20000)
			@locations = exotic
		else
			p "I don't know how you get there"
		end
			
		#@locations = Experience.near(@mychoice, 50, :units => :km)
		@locations -= [*@mychoice]
		@locations = @locations.sort_by {|location| location.price}
		#@locations.in_groups(3, false)

		@budget_travel = @locations.in_groups(3, false)[0].sample
  	@medium_travel = @locations.in_groups(3, false)[1].sample
  	@splurge_travel = @locations.in_groups(3, false)[2].sample

    @mychoice_distance_price = @mychoice_distance.to_f * 0.55
    @budget_distance_price = Geocoder::Calculations.distance_between(@city_name, @budget_travel, :units => :km) * 0.11 + 20
    @medium_distance_price = Geocoder::Calculations.distance_between(@city_name, @medium_travel, :units => :km) * 0.09 +35
    @splurge_distance_price = Geocoder::Calculations.distance_between(@city_name, @splurge_travel, :units => :km) * 0.07 + 110  	  	
  end
end
