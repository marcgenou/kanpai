class ShowroomController < ApplicationController
  def index
  @experiences = Experience.order(:title)
  end

  def lookup_ip_location
    if Rails.env.development?
      Geocoder.search(request.remote_ip).first.country
    else
      request.location
    end
  end
end
