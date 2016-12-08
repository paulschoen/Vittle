class AddUsersCurrentCityToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :users_city, :string
  end
end
