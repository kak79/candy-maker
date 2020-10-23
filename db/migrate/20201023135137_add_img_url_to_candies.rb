class AddImgUrlToCandies < ActiveRecord::Migration[6.0]
  def change
    add_column :candies, :img_url, :string
  end
end
