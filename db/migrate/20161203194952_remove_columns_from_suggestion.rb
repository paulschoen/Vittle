class RemoveColumnsFromSuggestion < ActiveRecord::Migration[5.0]
  def change
    remove_column :suggestions, :name
    remove_column :suggestions, :latitude
    remove_column :suggestions, :longitude
  end
end
