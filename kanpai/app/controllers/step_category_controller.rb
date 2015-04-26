class StepCategoryController < ApplicationController
  def index
  	@city_name = params[:city_name]
  	@mychoice = Experience.find(params[:experience])
  	@mychoice_distance = params[:mychoice]
  end
end
