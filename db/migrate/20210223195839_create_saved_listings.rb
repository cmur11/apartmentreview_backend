class CreateSavedListings < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_listings do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :price

      t.timestamps
    end
  end
end
