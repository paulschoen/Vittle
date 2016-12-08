require_dependency 'google_places'

class HomeController < ApplicationController
    before_action :authenticate_user!

    include Yelp::V2::Search::Request

    def index
      client = Yelp::Client.new
      @request = Location.new(
          term: 'restaurant',
          city: params[:city]
      )
      response = client.search(@request)
      @businesses = response['businesses']
        @suggestion = Suggestion.new
        @suggestions = Suggestion.all
        @users_name = "#{current_user.first_name} #{current_user.last_name}"

    end

    def create
        # code
    end

    def get_restaurant

        respond_to do |format|
            format.html # show.html.erb
            format.js # show.js.erb
        end
    end

    def get_suggestions
      @location_suggestions = Suggestion.in_range(2..5, origin: params[:origin])

        respond_to do |format|
            format.html # show.html.erb
            format.js # show.js.erb
        end
    end

end
