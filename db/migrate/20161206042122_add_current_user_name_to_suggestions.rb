class AddCurrentUserNameToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :users_name, :string
  end
end
