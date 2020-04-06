require_relative '../config/environment.rb'

ingredient1 = Ingredient.new("flour")
ingredient2 = Ingredient.new("sugar")
ingredient3 = Ingredient.new("butter")
ingredient4 = Ingredient.new("rice")
ingredient5 = Ingredient.new("chips")
ingredient6 = Ingredient.new("eggs")
ingredient7 = Ingredient.new("shoes")

recipe1 = Recipe.new("cookies", [ingredient1, ingredient2, ingredient3])
recipe2 = Recipe.new("pasta", [ingredient2, ingredient3, ingredient4])

user1 = User.new("Moxxie", [ingredient2, ingredient4, ingredient5])
user2 = User.new("Rob", [ingredient3, ingredient1, ingredient4])

card1 = RecipeCard.new(user1, recipe1)
card2 = RecipeCard.new(user2, recipe1)
card3 = RecipeCard.new(user1, recipe2)



binding.pry