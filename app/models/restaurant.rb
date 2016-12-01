class Restaurant < ApplicationRecord
  has_many :suggestions

  def api
  end
end
