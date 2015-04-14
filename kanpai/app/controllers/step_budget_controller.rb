class StepBudgetController < ApplicationController
  def index
  	@mychoice = Experience.find(params[:experience])

		@locations = Experience.near(@mychoice, 50, :units => :km)
		@locations -= @mychoice


  	@budget_travel = Experience.find(params[:experience])
  	@medium_travel = Experience.find(params[:experience])
  	@splurge_travel = Experience.find(params[:experience])  	
  end
end
