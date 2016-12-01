class RestaurantCultvator
  # key = AIzaSyDuHm2zR4jJ6H1CFcysKmkr8LnN-6rfHo8
  def find_restaraunt(longitude, latitude, radius)
    key = "AIzaSyCnYXPQPPEJocAuWT21VvAJkS5ucXGOMwg"
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?type=restaurant&"
    url += "key=#{key}&" + "location=#{longitude},#{latitude}&" + "radius=#{radius}"

    response = HTTParty.get(url)
    JSON.parse(response.body)["results"]
    # JSON.parse(response.body)["results"].first["icon"]
  end
end
