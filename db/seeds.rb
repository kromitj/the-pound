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
puts "person: #{person}"
puts "---------- created Company **************"

# shelter = Shelter.create()
# ShelterAdmin.create!({admin_user_id: admin.id, user_id: person.id})

# puts "---------- created User **************"