# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
Ingredient.destroy_all

ingredients["drinks"].each do |i|
  name = i["strIngredient1"]
  Ingredient.create(name: name)
end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "champagne")
Ingredient.create(name: "sugar")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "sparkling water")
Ingredient.create(name: "coffee")
Ingredient.create(name: "baileys")
Ingredient.create(name: "rum")
Ingredient.create(name: "bourbon")
