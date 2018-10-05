# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Adding multiple categories
Category.create([{name: 'Muusika'}, {name: 'Teater' }, 
	{name: 'Sport' }, {name: 'Festival' }, {name: 'EV100' },
	{name: 'Film' }, {name: 'Kogupere' }, {name: 'Näitus' }, {name: 'Teater' }])
#Adding one event
Event.create({
   name: "Viljandi Folk",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 45,
   date: Date.today + 3.weeks,
   location: "Viljandi",
   category: Category.where(name: "Muusika").first
})
#Event after 2 months, 3 days
Event.create({
   name: "Kinkekaartide sooduspakkumised",
   short_description: "2 kuu ja 3 päeva pärast",
   long_description: "Sooduspakkumised !!!",
   price: 10,
   date: Date.today + 2.months + 3.days,
   location: "Pärnu",
   category: Category.where(name: "Kogupere").first
})
#Event last year
Event.create({
   name: "Jalgpalli MM finaal",
   short_description: "aasta tagasi",
   long_description: "Tule vaata jalkat!",
   price: 80,
   date: Date.today - 1.years,
   location: "Tallinn",
   category: Category.where(name: "Sport").first
})
#Event on my bday
Event.create({
   name: "Minu sünnipäev!",
   short_description: "Minu sünnipäev",
   long_description: "Tule soovi mulle õnne :) :)",
   price: 1000,
   date: Date.today + 5.months + 17.days,
   location: "Tartu",
   category: Category.where(name: "Festival").first
})