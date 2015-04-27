class StepCategoryController < ApplicationController
  def index
  	@city_name = params[:city_name]
  	@mychoice = Experience.find(params[:experience])
  	@mychoice_distance = params[:mychoice]


  	@mychoice_distance_price = @mychoice_distance.to_f * params[:multiplier].to_f
  end
end
