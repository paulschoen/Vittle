class SuggestionsController < ApplicationController
    before_action :authenticate_user!


    def index
        @location_suggestions = Suggestion.in_range(1..10, :origin => params[:origin])
        @suggestions = Suggestion.all
    end

    def create
        @suggestion = Suggestion.new(suggestion_params)
        @users_name = "#{current_user.first_name} #{current_user.last_name}"
        @suggestion.save

        redirect_back(fallback_location: home_index_path)
    end

    private

    def suggestion_params
        params.require(:suggestion).permit(:yelp_id, :body, :users_name, :latitude, :longitude)
    end
end
