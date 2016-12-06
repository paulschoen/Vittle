class SuggestionsController < ApplicationController
    before_action :authenticate_user!


    def index
        @suggestions = Suggestion.all
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
