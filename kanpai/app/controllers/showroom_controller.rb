class ShowroomController < ApplicationController
  def index
  @experiences = Experience.order(:title)
  end
end
