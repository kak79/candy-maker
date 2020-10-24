class CreateChocolates < ActiveRecord::Migration[6.0]
  def change
    create_table :chocolates do |t|
      t.integer :candy_id
      t.string :name
      t.integer :price
      t.string :img_url
      t.string  :description
      
      t.timestamps
    end
  end
end


