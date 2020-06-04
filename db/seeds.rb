# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

## Create items sample
Item.destroy_all
User.destroy_all
Cart.destroy_all

10.times do
  Item.create!(
    title: Faker::Creature::Cat.registry,
    #between 10 and 20 words
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 10),
    price: Faker::Number.decimal(l_digits: 2)
  )
end

## Create Users sample
10.times do
  @user = User.create(
    email: Faker::Internet.email,
    password: "azerty"
  )
  Cart.create(user_id: @user.id)
end

1.times do
@user = User.create!(
  email: "compteadmin@yopmail.com",
  password: "azerty",
  admin: true
)
  Cart.create(user_id: @user.id)
end

1.times do
  @user = User.create!(
    email: "compteadmin2@yopmail.com",
    password: "azerty",
    admin: true
  )
  Cart.create(user_id: @user.id)
end
