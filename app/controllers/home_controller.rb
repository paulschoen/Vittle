require_dependency 'google_places'

class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    hi = RestaurantCultvator.new
    @hi = hi.find_restaraunt(40.759951, -73.980047, 5000)
  end
end
