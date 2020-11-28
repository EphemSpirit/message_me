User.destroy_all

names = %w[Matt Drew Tony Cheryl Emily Sabrina Steve Paul Rose]

names.each do |name|
  User.create!(username: name, password: 'foobar')
end  
