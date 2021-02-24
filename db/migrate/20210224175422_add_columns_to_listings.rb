class AddColumnsToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :address, :string
    add_column :listings, :amenities, :string
  end
end
