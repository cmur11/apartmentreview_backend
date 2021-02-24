# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

User.destroy_all
Listing.destroy_all
Review.destroy_all
SavedListing.destroy_all
AppliedListing.destroy_all

#user test create
user1 =User.create(name: "Conor M", username:"cm11", password:"123", email:"conormurnane11@gmail.com")

#review test
review1 = Review.create(user_id:user1.id, listing_id:listing1.id, comment:"working", rating:4 )

#Saved Listing test
sl1 = SavedListing.create(listing_id:listing1.id, user_id: user1.id, price: 1400)

#Applied Listing
al1 = AppliedListing.create(listing_id:listing1.id, user_id: user1.id)


#Listing Test
# listing1 = Listing.create(price:1200, zip_code:10016, photos:"https://techcrunch.com/wp-content/uploads/2019/03/blueground-apartment-2-2-2.jpg" , bedrooms:2, bathrooms:1 , sqft: 550, days_on_market:23, previous_price: 1400, broker_email:"conormurnane11@gmail.com" )

res = RestClient.get("https://realtor-com-real-estate.p.rapidapi.com/for-rent?city=New%20York&state_code=NY&limit=1&offset=0", 
	
	"headers": {
		"x-rapidapi-key" => "cb43fbbba3msh5d9f3ef2655454ep1dcff1jsn4248c3a7c32e",
		"x-rapidapi-host" => ENV['API']
    	})

        json = res.body

        listing_hash = JSON.parse(json)
        puts listing_hash
        # listing_hash['listings'].each do |listing|
        #     new_listing = Listing.create(
        #         price: listing["list_price_min"],
        #         address: listing["listing_id"]  ,
        #         zip_code: listing["postal_code"],
        #         photos: listing["href"],
        #         bedrooms: listing["beds_max"] ,
        #         bathrooms: listing["baths_min"],
        #         sqft: listing["sqft_min"],
        #         days_on_market: listing["list_date"],
        #         previous_price: "",
        #         broker_email: "conormurnane11@gmail.com",
        #         amenities: listing["text"],
        #         neighborhood: listing["name"]
        #     )
        # end