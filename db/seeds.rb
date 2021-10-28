# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# user - first name, last name, email, password
# trip - city, country, image url, been there, reason, belongs to user
# journal - content, belongs to trip 

# puts "seeding"

# User.create(first_name: "Gatsby", last_name: "Dog", email: "test@test.com", password: "dogdog")
# User.create(first_name: "Bobby", last_name: "Hill", email: "test2@test2.com", password: "dangit")

# Trip.create(city: "Cornwall", country: "England", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH6bY4anPTSuDytMYvx0MDevWuSE_WPDhAQg&usqp=CAU", been_there: false, reason: "King Arthur and Excalibur", user_id: 1)
# Trip.create(city: "Lofoten Islands", country: "Norway", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSva7_wPQ-KFg96JSEaKMcFs1aJy1jBnhJ84w&usqp=CAU", been_there: false, reason: "Beautiful and outdoorsy", user_id: 1)
# Trip.create(city: "Lake Como", country: "Italy", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-zR7wuRdt-WEeq8o7CxaTKKmmuUvORiuZOA&usqp=CAU", been_there: false, reason: "Italian lakeside", user_id: 2)
# Trip.create(city: "Kurashiki", country: "Japan", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1o-S2mzCtMCVPTty7oD_rQx3jq10mkB4dSA&usqp=CAU", been_there: false, reason: "City of rivers", user_id: 2)
# Trip.create(city: "Dublin", country: "Ireland", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf1jlqz4K0_zHhk_7TZLwvjGFrXsa6Ju_wsw&usqp=CAU", been_there: true, reason: "Guinness??", user_id: 2)
# Trip.create(city: "Inverness", country: "Scotland", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYlWLQ0Bszi93wo9mbTXgvmV9eRiIX-LCrRw&usqp=CAU", been_there: true, reason: "Outlander", user_id: 2)

# Journal.create(content: "What a great city! Excellant pubs and lots of Guinnsess", trip_id: 5)
# Journal.create(content: "Saw all my favorites places from Outlander but didn't go back in time.", trip_id: 6)

# puts "completed seeding"