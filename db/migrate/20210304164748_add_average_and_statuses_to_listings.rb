class AddAverageAndStatusesToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :applied, :boolean
    add_column :listings, :saved, :boolean
    add_column :listings, :average, :float
  end
end
