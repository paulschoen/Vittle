require_dependency 'google_places'

class HomeController < ApplicationController
  before_action :authenticate_user!
  include Yelp::V2::Search::Request

   def index
     client = Yelp::Client.new
     @request = Location.new(
            :term => "restaurant",
            :city => params[:city])
     response = client.search(@request)
     @businesses = response["businesses"]
     @suggestion = Suggestion.new
     @users_name = "#{current_user.first_name} #{current_user.last_name}"
   end

   def create
     #code
   end
end
