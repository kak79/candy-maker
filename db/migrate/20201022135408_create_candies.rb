class CreateCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :sweetness
      t.boolean :yummy

      t.timestamps
    end
  end
end
