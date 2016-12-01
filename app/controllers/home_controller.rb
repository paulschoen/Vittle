require_dependency 'google_places'

class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @locations =
            if params[:search].present?
                Home.near(params[:search], 50, order: :distance)
            else
                Home.all
            end
        user_location = RestaurantCultvator.new
        @area = user_location.find_restaraunt(40.759951, -73.980047, 5000)
    end
end
