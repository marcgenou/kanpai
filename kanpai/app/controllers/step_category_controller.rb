class StepCategoryController < ApplicationController
  def index
  	@city_name = params[:city_name]
  	@mychoice = Experience.find(params[:experience])
  	@mychoice_distance = params[:mychoice]


  	@mychoice_distance_price = @mychoice_distance.to_f * params[:multiplier].to_f

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
			
		@locations -= [*@mychoice]

		@budget_travel = @locations.select{ |location| location.price <= 100 }
    @medium_travel = @locations.select{ |location| location.price > 100 && location.price <= 1000}
    @splurge_travel = @locations.select{ |location| location.price > 1000 }

		if @mychoice.price <= 100
			@locations = @budget_travel
		elsif @mychoice.price > 100 && @mychoice.price <= 1000
			@locations = @medium_travel
		elsif @mychoice.price > 1000
			@locations = @splurge_travel
		else
			p "I don't know how you get there"
		end

    @mychoice_category = @locations.select{ |location| location.category == @mychoice.category }.sample
    @first_category = @locations.select{ |location| location.category != @mychoice.category }.sample
    @second_category = @locations.select{ |location| location.category != @mychoice.category and location.category != @first_category.category }.sample
    @third_category = @locations.select{ |location| location.category != @mychoice.category and location.category != @first_category.category and location.category != @second_category.category }.sample

    @first_category_distance_price = Geocoder::Calculations.distance_between(@city_name, @first_category, :units => :km) * params[:multiplier].to_f
    @second_category_distance_price = Geocoder::Calculations.distance_between(@city_name, @second_category, :units => :km) * params[:multiplier].to_f
    @third_category_distance_price = Geocoder::Calculations.distance_between(@city_name, @third_category, :units => :km) * params[:multiplier].to_f
  end
end
