class Suggestion < ApplicationRecord
    include Yelp::V2::Business::Request
    acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

    before_validation :geo_address, on: :get

    scope :yelp_id_match, -> (business_id) {where('yelp_id = ?', business_id)}

    def call_yelp
        client = Yelp::Client.new
        request = Id.new(
            yelp_business_id: yelp_id
        )
        puts 'no results :(' if request.yelp_business_id.nil?
        @response = client.search(request)
    end

    private

    def geo_address
      return false if latitude.blank? || longitude.blank?
    end
end
