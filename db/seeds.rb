# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




10.times do |n|
  User.create!(
    email: Faker::Internet.email,
    name: "example_user#{n}",
    password: "password",
    password_confirmation: "password",

  )

  10.times do
    Link.create!(
      title: Faker::Company.name,
      upvotes: rand(1..100),
      url: Faker::Internet.url,
      user_id: User.last.id
      )
  end
end
