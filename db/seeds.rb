require 'faker'

# Creates 10 cities with random name
# 10.times do
#   City.create(name: Faker::Address.unique.city, zip_code: Faker::Address.unique.zip_code)
# end

# Creates 10 users with random values
# 10.times do
#   User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 50 + rand(200)), email: Faker::Internet.email, age: Faker::Number.between(from: 15, to: 99), city: City.all.sample)
# end

# Creates 20 gossips with random title and content
10.times do
  Gossip.create(title: Faker::Movie.unique.title, content: Faker::Lorem.sentence(word_count: 30 + rand(100)), user: User.all.sample)
end

# Creates 10 tags with random title
# 10.times do
#   Tag.create(title: Faker::String.random(length: 4 + rand(10)))
# end

# Creates 40 links between gossips and tags
# 10.times do
#   JoinTableTagGossip.create(gossip: Gossip.all.sample, tag: Tag.all.sample)
# end

# Creates private messages from random user (sender) to random user (recipient)
# 3.times do
#   PrivateMessage.create(content: Faker::Lorem.sentence(word_count: 20 + rand(50)), sender: User.all.sample, recipient: User.all.sample)

#   rand(1..5).times do
#     PrivateMessage.all.last.update(recipient: User.all.sample)
#   end
# end