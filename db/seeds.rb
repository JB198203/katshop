# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

########## Delete All ##########
Item.destroy_all
User.destroy_all
AddItemsToCarts.destroy_all

########## Create 10 items ########
10.times do |i|
  Item.create(
    title:       Faker::Creature::Cat.name,
    description: Faker::Lorem.sentence(word_count: rand(20..40)),
    price:       Faker::Number.decimal(l_digits: 2),
    image_url:   Faker::LoremFlickr.image(size: "50x60", search_terms: ['cat'])
  )
  puts "#{i} item(s) created"
  puts "*"*(i+1)
end

########## Create 20 users ########
20.times do |i|
  User.create(
    email:                 Faker::Internet.email,
    password:              "azerty",
    password_confirmation: "azerty"
  )
  puts "#{i} user(s) created"
  puts "*"*(i+1)
end

########## Create 20 carts & with random items ########
10.times do |i|
  
  Cart.create(
    user_id:User.all.sample.id
  )
  puts "#{i} cart(s) created"
  puts "*"*(i+1)
end



30.times do |i|
 AddItemsToCarts.create(
    cart_id:Cart.all.sample.id,
    item_id:Item.all.sample.id
  )
end