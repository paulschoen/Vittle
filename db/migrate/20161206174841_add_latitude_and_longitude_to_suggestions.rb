class AddLatitudeAndLongitudeToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :latitude, :float
    add_column :suggestions, :longitude, :float
  end
end
