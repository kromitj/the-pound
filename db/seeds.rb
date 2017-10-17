# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts "---------- created Damin **************"

person = User.create({first_name: "mitch", last_name: "kroska", email: "kromitj@gmail.com"})
puts "---------- created Users **************"

company = Company.create(address: "blah", name: "IBM", main_contact: person.id)
person.update(company_id: company.id)
puts "---------- created Company **************"

 shelter = Shelter.create(name: "Anti-Cruelty Society", address: "157 West Grand Ave., Chicago, IL 60654")
puts "---------- created Shelter **************"

ShelterAdmin.create!({admin_user_id: admin.id, user_id: person.id, shelter_id: shelter.id})
puts "---------- created ShelterAdmin **************"

animal = Animal.create(shelter_id: shelter.id, adoption_id: 36218658, name: "Tony", breed: "Pit Bull, Terrier", age_in_months: 96, animal_type: "Canine", sex: "male", declawed: false, size: "Large", weight: 35, is_spayed_or_nudered: true, adoption_fee: 150, picture: "https://placeimg.com/640/480/animals", desc: "Hello! My name is Tony and I've recently become available for adoption. The staff is getting to know me and will soon be posting more information - so check back or better yet, visit me at The Anti-Cruelty Society!")
puts "---------- created Animal **************"

breed_one = Breed.create(breed_name: "Terrier")
breed_two = Breed.create(breed_name: "Pit Bull")

AnimalBreed.create(animal_id: animal.id, breed_id: breed_one.id, breed_name: breed_one.breed_name)
AnimalBreed.create(animal_id: animal.id, breed_id: breed_two.id, breed_name: breed_two.breed_name)