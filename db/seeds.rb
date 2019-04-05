# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Information Technology")
Category.create(name: "Customer Service")
Category.create(name: "Management")
Category.create(name: "Financial")


JobPoster.create(first_name: "John", last_name: "Doe")
JobPoster.create(first_name: "Pop", last_name: "hue")

Location.create(name: "Test", street_address_1: "Department of State", street_address_2: "2050 Bamako Place", city: "Washington", state: "DC", zip_code: "20521")
Location.create(name: "Sample", street_address_1: "Department of State", street_address_2: "2050 Bamako Place", city: "Washington", state: "DC", zip_code: "20521")



