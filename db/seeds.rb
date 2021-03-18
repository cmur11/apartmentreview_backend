# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'rest-client'

# User.destroy_all
# Listing.destroy_all
# Review.destroy_all
# SavedListing.destroy_all
# AppliedListing.destroy_all

# #user test create
# user1 =User.create(name: "Conor M", username:"cm11", password:"123", email:"conormurnane11@gmail.com")

# #review test
# review1 = Review.create(user_id:user1.id, listing_id:1, comment:"working", rating:4 )

# #Saved Listing test
# sl1 = SavedListing.create(listing_id:1, user_id: user1.id, price: 1400)
# sl2 = SavedListing.create(listing_id:2, user_id: 1, price: 2000)
# sl3 = SavedListing.create(listing_id:3, user_id: 1, price: 2500)
# sl4 = SavedListing.create(listing_id:4, user_id: 1, price: 5000)

# #Applied Listing
# al1 = AppliedListing.create(listing_id:1, user_id: user1.id)


#Listing Test
# listing1 = Listing.create(price:1200, zip_code:10016, photos:"https://techcrunch.com/wp-content/uploads/2019/03/blueground-apartment-2-2-2.jpg" , bedrooms:2, bathrooms:1 , sqft: 550, days_on_market:23, previous_price: 1400, broker_email:"conormurnane11@gmail.com" )


#HTTP Test

# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://realtor-com-real-estate.p.rapidapi.com/for-rent?city=Austin&state_code=TX&limit=35&offset=0")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-key"] = 'cb43fbbba3msh5d9f3ef2655454ep1dcff1jsn4248c3a7c32e'
# request["x-rapidapi-host"] = 'realtor-com-real-estate.p.rapidapi.com'

# response = http.request(request)
# ruby_hash = JSON.parse(response.read_body)
# puts response.read_body


#  byebug

#  puts "hi"


# ruby_hash['data']['results'].each do |listing|
#         new_listing = Listing.create(
#             price: listing["list_price_min"],
#             address: listing['location']['address']['line'],
#             city: listing['location']['neighborhoods'][0]['city'], # need to fix this line to do a bulk load
#             state: listing['location']['address']['state_code'],
#             zip_code: listing['location']['address']['postal_code'],
#             photos: listing['photos'].map  do |photo| photo['href'] end ,
#             bedrooms: listing['description']['beds_max'] , 
#             bathrooms: listing['description']['baths_max'],
#             sqft: listing['description']['sqft_min'],
#             days_on_market: listing["list_date"],
#             previous_price: "",
#             broker_email: "conormurnane11@gmail.com",
#             amenities: listing['tags'],
#             neighborhood: listing['location']['neighborhoods'][0]['name'] 

#         )
#     end



#user test create
# user2 =User.create(name: "George M", username:"GM123", password:"123", email:"conormurnane11@gmail.com")

#review test
# review2 = Review.create(user_id:user2.id, listing_id:2, comment:"working", rating:5 )
# review2 = Review.create(user_id:3, listing_id:2, comment:"working", rating:5 )
# review3 = Review.create(user_id:3, listing_id:3, comment:"working", rating:4 )
# review4 = Review.create(user_id:3, listing_id:4, comment:"working", rating:4 )
# review2 = Review.create(user_id:user2.id, listing_id:5, comment:"working", rating:5 )

#Saved Listing test
# sl1 = SavedListing.create(listing_id:1, user_id: user1.id, price: 1400)
# sl2 = SavedListing.create(listing_id:2, user_id: 1, price: 2000)
# sl3 = SavedListing.create(listing_id:3, user_id: 1, price: 2500)
# sl4 = SavedListing.create(listing_id:4, user_id: 1, price: 5000)

#Applied Listing
# al1 = AppliedListing.create(listing_id:1, user_id: user1.id)
