class SuggestionsController < ApplicationController
    before_action :authenticate_user!
    include Yelp::V2::Business::Request

    def index
        client = Yelp::Client.new
        request = Id.new(
            yelp_business_id: params["yelp_id"]
        )
        response = client.search(request)

        @business = response
    end
end
