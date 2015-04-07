# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Experience.delete_all
Experience.create!(title: "NYC Marathon" , category: "sport" , description: "New York City Marathon" , image_url: "photos/exp01.jpg" , price: 300 , season: "autumn" , date: "2015-11-01" , duration: "one day" , tags: "marathon, new york city, running" , address: "fort wadsworth, ny") 
Experience.create!(title: "Tudor's route" , category: "cultural" , description: "Tudor's route" , image_url: "photos/exp02.jpg" , price: 100 , season: "year-round" , date: "" , duration: "one day" , tags: "tudor, henry viii, london" , address: "hampton court palace, uk") 
Experience.create!(title: "Shopping London" , category: "leisure" , description: "Shopping in London" , image_url: "photos/exp03.jpg" , price: 3000 , season: "year-round" , date: "" , duration: "one day" , tags: "shopping, london, harrods, bond street" , address: "bond street london") 
Experience.create!(title: "Victorian route" , category: "cultural" , description: "Victorian houses" , image_url: "photos/exp04.jpg" , price: 100 , season: "year-round" , date: "" , duration: "two days" , tags: "queen victoria, downtown abbey, victorian" , address: "westminster palace, uk") 
Experience.create!(title: "Parisien gardens" , category: "leisure" , description: "Gardens in Paris" , image_url: "photos/exp05.jpg" , price: 10 , season: "spring" , date: "" , duration: "one day" , tags: "monet, gardens, spring, flowers" , address: "lycee general claude monet, paris") 
Experience.create!(title: "Volcanic pedals" , category: "sport" , description: "Bike route around Lanzarote" , image_url: "photos/exp06.jpg" , price: 300 , season: "spring" , date: "" , duration: "five days" , tags: "mtb, lanzarote, volcanoes" , address: "puerto del carmen, lanzarote") 
Experience.create!(title: "Scotland on budget" , category: "adventure" , description: "Edinburgh and highlands on a budget" , image_url: "photos/exp07.jpg" , price: 650 , season: "summer" , date: "" , duration: "six days" , tags: "scotland, highlands, edinburgh" , address: "royal mile, edinburgh") 
Experience.create!(title: "Geisha's life" , category: "cultural" , description: "Kyoto surroundings" , image_url: "photos/exp08.jpg" , price: 200 , season: "spring" , date: "" , duration: "two days" , tags: "fushimi inari, kyoto, pontocho" , address: "pontocho, kyoto") 
Experience.create!(title: "Fletcher's legacy" , category: "adventure" , description: "Pitcairn and south pacific islands" , image_url: "photos/exp09.jpg" , price: 2000 , season: "year-round" , date: "" , duration: "three weeks" , tags: "fletcher captain, bounty, mutiny, pitcairn" , address: "pitcairn") 
Experience.create!(title: "Me, my bike and the atlantic" , category: "sport" , description: "Motorbiking in the Azores roads" , image_url: "photos/exp10.jpg" , price: 1000 , season: "summer" , date: "" , duration: "one week" , tags: "moto, atlantic, island, azores, solitude" , address: "azores, portugal") 
Experience.create!(title: "The real Tattoine" , category: "adventure" , description: "An adventure travel to the tunisian desert" , image_url: "photos/exp11.jpg" , price: 500 , season: "winter" , date: "" , duration: "four days" , tags: "tunisian, tattoine, star wars, skywalker" , address: "tataouine, tunisia") 
Experience.create!(title: "Man TT" , category: "sport" , description: "Isle of Man Tourist Trophy" , image_url: "photos/exp12.jpg" , price: 400 , season: "spring" , date: "2015-05-30" , duration: "two weeks" , tags: "motorbikes, isle of man, tourist trophy" , address: "douglas, isle of man") 
Experience.create!(title: "This is for real" , category: "leisure" , description: "Poker tournaments" , image_url: "photos/exp13.jpg" , price: 2000 , season: "year-round" , date: "" , duration: "two days" , tags: "las vegas, texas hold'em, casino, poker" , address: "aria hotel, las vegas") 
Experience.create!(title: "Under the Red Sea" , category: "sport" , description: "Diving the Red sea" , image_url: "photos/exp14.jpg" , price: 1500 , season: "winter" , date: "" , duration: "five days" , tags: "red sea, diving, coral, egypt" , address: "marsa alaam, egypt") 
Experience.create!(title: "Milford track" , category: "sport" , description: "From Te Anau to Milford Sound" , image_url: "photos/exp15.jpg" , price: 300 , season: "winter" , date: "" , duration: "four days" , tags: "new zealand, hiking, trekking, milford" , address: "te anau lake, new zealand") 
Experience.create!(title: "Sufers Paradise" , category: "sport" , description: "Surf in Gold Coast" , image_url: "photos/exp16.jpg" , price: 300 , season: "autumn" , date: "" , duration: "three days" , tags: "surf, gold coast, nobby beach" , address: "sufers paradise, australia") 
Experience.create!(title: "Puffins observer" , category: "adventure" , description: "Atlantic puffin observation" , image_url: "photos/exp17.jpg" , price: 300 , season: "spring" , date: "" , duration: "two days" , tags: "puffin, birds, faroe" , address: "faroe islands ") 
Experience.create!(title: "The hanami" , category: "leisure" , description: "Picnic in Shinjuku Gyoen" , image_url: "photos/exp18.jpg" , price: 20 , season: "spring" , date: "" , duration: "one day" , tags: "hanami, sakura, cherry blossom, picnic" , address: "shinjuku gyoen, tokyo") 
Experience.create!(title: "Hiking Mauritius" , category: "sport" , description: "Mauritius trails and paths" , image_url: "photos/exp19.jpg" , price: 800 , season: "winter" , date: "" , duration: "five days" , tags: "hiking, trails, mauritius" , address: "le pouce, port luois, mauritius") 
Experience.create!(title: "The last baobab" , category: "cultural" , description: "Madagascar wildlife" , image_url: "photos/exp20.jpg" , price: 300 , season: "winter" , date: "" , duration: "three days" , tags: "baobab trees, diving, wildlife" , address: "morondava, madagascar") 
Experience.create!(title: "Bungee jumping at Victoria Falls" , category: "adventure" , description: "Victoria falls bungee" , image_url: "photos/exp21.jpg" , price: 300 , season: "year-round" , date: "" , duration: "one day" , tags: "bungee, jumping, zimbabwe" , address: "victoria falls, zimbabue") 
Experience.create!(title: "Flying the red desert" , category: "adventure" , description: "Hot air ballons flight over the Namib" , image_url: "photos/exp22.jpg" , price: 300 , season: "autumn" , date: "" , duration: "two days" , tags: "namib, red desert, hot air ballons" , address: "namib desert, namibia") 
Experience.create!(title: "Penguins at Punta Arena" , category: "adventure" , description: "Penguins in Magallanes region" , image_url: "photos/exp23.jpg" , price: 300 , season: "winter" , date: "" , duration: "one day" , tags: "penguin, punta arena, patagonia" , address: "seno otway, punta arenas, chile") 
Experience.create!(title: "Entresijos and gallinejas" , category: "food" , description: "Madrid famous dish" , image_url: "photos/exp24.jpg" , price: 20 , season: "year-round" , date: "" , duration: "one day" , tags: "frying, entresijos, gallinejas" , address: "Embajadores 84, madrid") 
Experience.create!(title: "Resting in Turks or..." , category: "leisure" , description: "Turks and Caicos holidays" , image_url: "photos/exp25.jpg" , price: 3000 , season: "year-round" , date: "" , duration: "six days" , tags: "resorts, grace bay, turks and caicos" , address: "grace bay, turks and caicos") 
Experience.create!(title: "Street cart roulette" , category: "food" , description: "Backpacking degustation menu " , image_url: "photos/exp26.jpg" , price: 5 , season: "year-round" , date: "" , duration: "one day" , tags: "khao san road, food, street cart, backpacker" , address: "khao san road, thailand") 
Experience.create!(title: "Chinese Venice" , category: "cultural" , description: "Suzhou, the venice of the east" , image_url: "photos/exp27.jpg" , price: 500 , season: "autumn" , date: "" , duration: "three days" , tags: "suzhou, china, gardens, canals" , address: "humble administrators garden, suzhou") 
Experience.create!(title: "Surfing sand waves" , category: "adventure" , description: "Kalbarri sandboarding" , image_url: "photos/exp28.jpg" , price: 100 , season: "year-round" , date: "" , duration: "one day" , tags: "kalbarri, sandboarding, australia, surf" , address: "kalbarri visitors center, australia") 
Experience.create!(title: "Wild Tasmania" , category: "adventure" , description: "Tasmanian kayak expedition" , image_url: "photos/exp29.jpg" , price: 2200 , season: "winter" , date: "" , duration: "one week" , tags: "tasmania, kayak, wilderness, isolation" , address: "bathurst harbour airport, tasmania") 
Experience.create!(title: "Teaching in Vietnam" , category: "volunteering" , description: "English teaching experience in south Vietnam" , image_url: "photos/exp30.jpg" , price: 1000 , season: "year-round" , date: "" , duration: "three weeks" , tags: "saigon, vietnam, teaching, english" , address: "saigon, vietnam") 
