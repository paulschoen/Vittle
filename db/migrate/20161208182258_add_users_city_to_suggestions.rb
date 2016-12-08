class AddUsersCityToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :menu_item, :string
  end
end
