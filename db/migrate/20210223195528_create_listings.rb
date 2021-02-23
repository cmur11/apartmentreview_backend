class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.integer :zip_code
      t.string :photos
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :sqft
      t.integer :days_on_market
      t.integer :previous_price
      t.string :broker_email

      t.timestamps
    end
  end
end
