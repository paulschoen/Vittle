require_dependency 'google_places'

class HomeController < ApplicationController
    before_action :authenticate_user!

    include Yelp::V2::Search::Request

    def index
      @origin = params[:origin]
      @city = params[:city]
      client = Yelp::Client.new
      city = params[:city]
      @request = Location.new(
          term: 'restaurant',
          city: city
      )
      response = client.search(@request)
      @businesses = response['businesses']
        @suggestion = Suggestion.new
        @suggestions = Suggestion.all
        @users_name = "#{current_user.first_name} #{current_user.last_name}"
        @origin = params[:origin] || "Miami"
        @location_suggestions = Suggestion.in_range(1..15, origin: @origin)
        @users_city = "#{current_user.city}"
    end

    def create
        # code
    end
end
