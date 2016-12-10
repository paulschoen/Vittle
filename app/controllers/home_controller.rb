class HomeController < ApplicationController
    before_action :authenticate_user!
    Geokit::Geocoders::provider_order=[:google,:yahoo,:us]

    include Yelp::V2::Search::Request
    def index
      @test = request.location.methods
      @lat = request.location.city
      @origin = params["origin"] || @lat
      @city = params[:city] || @lat
      client = Yelp::Client.new
      @request = Location.new(
          term: 'restaurant',
          city: @city
      )
      response = client.search(@request)
      @businesses = response['businesses']
        @suggestion = Suggestion.new
        @suggestions = Suggestion.all
        @users_name = "#{current_user.first_name} #{current_user.last_name}"
        @location_suggestions = Suggestion.within(5, :origin=>@origin)
        @users_city = "#{current_user.city}"
    end

    def create
        # code
    end
end
