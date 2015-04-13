class StepBudgetController < ApplicationController
  def index
  	@local_budget = Experience.find(params[:experience])
  end
end
