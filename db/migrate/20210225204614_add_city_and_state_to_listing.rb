class AddCityAndStateToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :city, :string
    add_column :listings, :state, :string
  end
end
