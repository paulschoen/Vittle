class Home < ApplicationRecord
  

  def get_lat
    self["location"]["coordinate"]["longitude"]
  end

  def get_lon
    self["location"]["coordinate"]["latitude"]
  end
end
