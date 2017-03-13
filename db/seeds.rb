# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do

  author = Author.create!(
    name: Faker::Name.name_with_middle,
    bio: Faker::HarryPotter.quote,
    avatar: Faker::LoremPixel.image("200x200", false, 'people')
  )

  3.times do
    author.cheeses.create!(
      name: Faker::Space.moon,
      description: Faker::Hipster.paragraphs(6),
      picture: Faker::LoremPixel.image("400x400", false, 'food', rand(1..10)),
      created_at: rand(1..200).days.ago
    )
  end

end
