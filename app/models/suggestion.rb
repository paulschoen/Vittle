class Suggestion < ApplicationRecord
    include Yelp::V2::Business::Request

    def call_yelp
        client = Yelp::Client.new
        request = Id.new(
            yelp_business_id: yelp_id
        )
        puts 'no results :(' if request.yelp_business_id.nil?
        @response = client.search(request)
    end
end
