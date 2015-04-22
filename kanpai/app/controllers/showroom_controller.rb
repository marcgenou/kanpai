class ShowroomController < ApplicationController
  def index
  	env['HTTP_X_REAL_IP'] = '2.221.182.33' if Rails.env.development?
  	location = request.location
  	@experiences = Experience.order(:title)
  end
end
