class Suggestion < ApplicationRecord
    include Yelp::V2::Business::Request

    scope :yelp_id_match, -> (business_id) {where('yelp_id = ?', business_id)}

    def call_yelp
        client = Yelp::Client.new
        request = Id.new(
            yelp_business_id: yelp_id
        )
        puts 'no results :(' if request.yelp_business_id.nil?
        @response = client.search(request)
    end
end
