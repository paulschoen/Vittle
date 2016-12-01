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
   end
end
