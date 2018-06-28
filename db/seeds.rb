# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# 10.times do
#   rand_cocktail = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/random.php').read)
#   puts rand_cocktail["drinks"]
#   rand_cocktail["drinks"].each do |cocktail|
#     Cocktail.create(name: cocktail["strDrink"])
#   end
# end

#  # INGREDIENTS CREATION
# ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end

2.times do
  cocktail_id =  (1..5).to_a.sample
  ingredient_id =  (1..50).to_a.sample
  quantity =  (1..3).to_a.sample
  cocktail = Cocktail.find(cocktail_id)
  ingredient = Ingredient.find(ingredient_id)
  this_dose = Dose.create(quantity: quantity, cocktail_id: cocktail, ingredient_id: ingredient)
  # this_dose.valid? ? this_dose.save : ''
end

