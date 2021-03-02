# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

# User.destroy_all
# Listing.destroy_all
# Review.destroy_all
# SavedListing.destroy_all
# AppliedListing.destroy_all

#user test create
user1 =User.create(name: "Conor M", username:"cm11", password:"123", email:"conormurnane11@gmail.com")

#review test
review1 = Review.create(user_id:user1.id, listing_id:1, comment:"working", rating:4 )

#Saved Listing test
sl1 = SavedListing.create(listing_id:1, user_id: user1.id, price: 1400)

#Applied Listing
al1 = AppliedListing.create(listing_id:1, user_id: user1.id)


#Listing Test
# listing1 = Listing.create(price:1200, zip_code:10016, photos:"https://techcrunch.com/wp-content/uploads/2019/03/blueground-apartment-2-2-2.jpg" , bedrooms:2, bathrooms:1 , sqft: 550, days_on_market:23, previous_price: 1400, broker_email:"conormurnane11@gmail.com" )


#HTTP Test

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://realtor-com-real-estate.p.rapidapi.com/for-rent?city=Austin&state_code=TX&limit=20&offset=0")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = 'cb43fbbba3msh5d9f3ef2655454ep1dcff1jsn4248c3a7c32e'
request["x-rapidapi-host"] = 'realtor-com-real-estate.p.rapidapi.com'

response = http.request(request)
ruby_hash = JSON.parse(response.read_body)
puts response.read_body


#  byebug

#  puts "hi"


ruby_hash['data']['results'].each do |listing|
        new_listing = Listing.create(
            price: listing["list_price_min"],
            address: listing['location']['address']['line'],
            city: listing['location']['neighborhoods'][0]['city'], # need to fix this line to do a bulk load
            state: listing['location']['address']['state_code'],
            zip_code: listing['location']['address']['postal_code'],
            photos: listing['photos'].map  do |photo| photo['href'] end ,
            bedrooms: listing['description']['beds_max'] , 
            bathrooms: listing['description']['baths_max'],
            sqft: listing['description']['sqft_min'],
            days_on_market: listing["list_date"],
            previous_price: "",
            broker_email: "conormurnane11@gmail.com",
            amenities: listing['tags'],
            neighborhood: listing['location']['neighborhoods'][0]['name'] 

        )
    end


# #user test create
# user1 =User.create(name: "Conor M", username:"cm11", password:"123", email:"conormurnane11@gmail.com")

# #review test
# review1 = Review.create(user_id:user1.id, listing_id:1, comment:"working", rating:4 )

# #Saved Listing test
# sl1 = SavedListing.create(listing_id:1, user_id: user1.id, price: 1400)

# #Applied Listing
# al1 = AppliedListing.create(listing_id:1, user_id: user1.id)






# res = RestClient.get("https://realtor-com-real-estate.p.rapidapi.com/for-rent?city=New%20York&state_code=NY&limit=1&offset=0", 

# "headers": {
#     "x-rapidapi-key" => "cb43fbbba3msh5d9f3ef2655454ep1dcff1jsn4248c3a7c32e",
#     "x-rapidapi-host" => 'realtor-com-real-estate.p.rapidapi.com'
# })

# # "x-rapidapi-host" => ENV['API']
# json = res.body
# ruby_hash = JSON.parse(json)
# # puts ruby_hash
# byebug
#        
        # puts listing_hash
        # ruby_hash['data']['results'].each do |listing|
        #     new_listing = Listing.create(
        #         price: listing["list_price_min"],
        #         address: listing['community']['source']['listing_id'], done
        #         zip_code: listing['location']['address']['postal_code'], done
        #         photos: listing['photos'][0]['href'], - should show first but not others, need to revisit
        #         bedrooms: listing['description']['beds_max'] , done 
        #         bathrooms: listing['description']['baths_max'], done
        #         sqft: listing['description']['sqft_min'], done
        #         days_on_market: listing["list_date"],
        #         previous_price: "",
        #         broker_email: "conormurnane11@gmail.com",
        #         amenities: listing['community']['details'][0]['text'],
        #         neighborhood: listing['location']['neighborhoods'][0]['name'] done

        #     )
        # end