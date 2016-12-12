class AddHashtagsToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :hashtags, :string
  end
end
