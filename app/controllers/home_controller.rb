class HomeController < ApplicationController
    before_action :authenticate_user!

    include Yelp::V2::Search::Request
    def index
      @lat = Geokit::Geocoders::IpGeocoder.geocode('50.244.134.51').latitude
      @lon = Geokit::Geocoders::IpGeocoder.geocode('50.244.134.51')
      @origin = params["origin"] || "Fort Lauderdale"
      @city = params[:city]
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
