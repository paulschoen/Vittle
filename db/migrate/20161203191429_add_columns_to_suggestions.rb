class AddColumnsToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :name, :string
    add_column :suggestions, :yelp_id, :string
    add_column :suggestions, :latitude, :string
    add_column :suggestions, :longitude, :string
  end
end
