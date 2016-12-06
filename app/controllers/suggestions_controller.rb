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

    def create
      @suggestion = Suggestion.new(suggestion_params)

      @suggestion.save

      redirect_back(fallback_location: home_index_path)
    end


    private
    def suggestion_params
      params.require(:suggestion).permit(:yelp_id, :body)
    end
end
