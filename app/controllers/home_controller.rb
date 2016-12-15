class HomeController < ApplicationController
    before_action :authenticate_user!
    Geokit::Geocoders::provider_order=[:google,:yahoo,:us]

    include Yelp::V2::Search::Request
    def index
      @lat = (request.location.latitude.to_s) + ',' + (request.location.longitude.to_s)
      @origin = params['origin'] || @lat
      if params['origin'].blank?
        @origin = 'Miami'
      end
      client = Yelp::Client.new
      @request = Location.new(
          term: 'restaurant',
          city: @origin
      )
      response = client.search(@request)
      @businesses = response['businesses']
        @suggestion = Suggestion.new
        @suggestions = Suggestion.all
        @users_name = "#{current_user.first_name} #{current_user.last_name}"
        @location_suggestions = Suggestion.within(5, :origin=>@origin)
        @users_city = "#{current_user.city}"
        @users_email = "#{current_user.email}"
    end

    def create
        # code
    end
end
