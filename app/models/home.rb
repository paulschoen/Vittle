class Home < ApplicationRecord
  def get_gravatar_pic(email)
    Gravatar.new(email).image_url
  end

  def get_lat
    self["location"]["coordinate"]["longitude"]
  end

  def get_lon
    self["location"]["coordinate"]["latitude"]
  end
end
