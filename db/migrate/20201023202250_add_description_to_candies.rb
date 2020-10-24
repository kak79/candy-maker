class AddDescriptionToCandies < ActiveRecord::Migration[6.0]
  def change
    add_column :candies, :description, :string
  end
end
