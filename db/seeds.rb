# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all

10.times do
    Person.create(
        name: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        job_title: Faker::Job.title,
        department: Faker::Job.field
    )
end

Project.destroy_all

10.times do
    Project.create(
        name: Faker::Commerce.product_name,
        description: Faker::Commerce.department
    )
end