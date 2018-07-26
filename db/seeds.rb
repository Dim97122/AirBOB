require 'faker'


10.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do
  dog = Dog.create!(name: Faker::Name.name)
end

10.times do
  city = City.create(city_name: Faker::Address.city)
end

40.times do
  stroll = Stroll.create!(date: Faker::Date.forward(23), dogsitter_id: Faker::Number.between(1,10), dog_id: Faker::Number.between(1,20), city_id: Faker::Number.between(1,10))
end
