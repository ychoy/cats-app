Cat.destroy_all
cats_data = []

99.times do
  cats_data << {
    name: Faker::Cat.name,
    breed: Faker::Cat.breed
  }
end

Cat.create(cats_data)
