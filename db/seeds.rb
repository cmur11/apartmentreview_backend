# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Listing.destroy_all
Review.destroy_all
SavedListing.destroy_all
AppliedListing.destroy_all

#user test create
user1 =User.create(name: "Conor M", username:"cm11", password:"123", email:"conormurnane11@gmail.com")

#Listing Test
listing1 = Listing.create(price:1200, zip_code:10016, photos:"https://techcrunch.com/wp-content/uploads/2019/03/blueground-apartment-2-2-2.jpg" , bedrooms:2, bathrooms:1 , sqft: 550, days_on_market:23, previous_price: 1400, broker_email:"conormurnane11@gmail.com" )
#review test
review1 = Review.create(user_id:user1.id, listing_id:listing1.id, comment:"working", rating:4 )

#Saved Listing test
sl1 = SavedListing.create(listing_id:listing1.id, user_id: user1.id, price: 1400)

#Applied Listing
al1 = AppliedListing.create(listing_id:listing1.id, user_id: user1.id)
