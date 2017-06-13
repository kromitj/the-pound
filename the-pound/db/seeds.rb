# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shelter = Shelter.create({name: "PAWS Chicago", address: " 1997 N Clybourn Ave, Chicago, IL 60614", phone_number: "773-935-7297"})

shelter.animals.create({name: "Chase", animal_type: "Canine", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: false })
shelter.animals.create({name: "Cody", animal_type: "Cat", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: false })
shelter.animals.create({name: "BILLY", animal_type: "Canine", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: true })
shelter.animals.create({name: "Chance", animal_type: "Canine", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: true })
shelter.animals.create({name: "Kitty", animal_type: "Cat", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: true })
shelter.animals.create({name: "HairBall", animal_type: "Cat", avitar: "http://lorempixel.com/200/200/animals/", has_spotlight: false })