class RemoveMenuItemsFromSuggestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :suggestions, :menu_item
  end
end
