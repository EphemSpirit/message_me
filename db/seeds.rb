User.destroy_all
Message.destroy_all

names = %w[Matt Drew Tony Cheryl Emily Sabrina Steve Paul Rose]

names.each do |name|
  User.create!(username: name, password: 'foobar')
end

User.all.each do |user|
  user.messages.create(body: Faker::Lorem.sentence(word_count: 15))
end
