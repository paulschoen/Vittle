class AddUsersEmailToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_column :suggestions, :email, :string
  end
end
