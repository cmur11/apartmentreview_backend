class AddNeighborhoodToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :neighborhood, :string
  end
end
