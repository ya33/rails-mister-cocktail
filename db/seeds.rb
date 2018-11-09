puts "starting seeding..."
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

100.times do
  Cocktail.create(
    name: Faker::Superhero.name)
end

100.times do
  Ingredient.create(
    name: Faker::Name.first_name)
end

100.times do
  Dose.create(
    description: "#{(1..20).to_a.sample} cl",
    ingredient_id: (1..30).to_a.sample,
    cocktail_id: (1..30).to_a.sample)
end

puts "seeding done!"
