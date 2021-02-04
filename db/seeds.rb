require 'faker'

Flat.delete_all
puts "delete all flats"
flat_titles = ['Light & Spacious Garden Flat', 'Cool and Cosy Flat for friends', 'A Flat for everybody', 'The Best Flat you would ever find', "I'm out of Idea flat"]
flat_images = [
  'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8aG9tZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aG9tZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGhvbWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1501183638710-841dd1904471?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGhvbWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1542853647-47ad77242390?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fGhvbWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDN8fGhvbWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
]

10.times do
  Flat.create!(
    name: flat_titles.sample,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence(word_count: 15),
    price_per_night: rand(20...150),
    number_of_guests: rand(2..8),
    pic_url: flat_images.sample
  )
  puts "Flat created"
end
