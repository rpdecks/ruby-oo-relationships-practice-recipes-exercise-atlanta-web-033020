require_relative '../config/environment.rb'

ingredient1 = Ingredient.new("flour")
ingredient2 = Ingredient.new("sugar")
ingredient3 = Ingredient.new("butter")
ingredient4 = Ingredient.new("rice")
ingredient5 = Ingredient.new("chips")
ingredient6 = Ingredient.new("eggs")
ingredient7 = Ingredient.new("shoes")

recipe1 = Recipe.new("cookies", [ingredient2, ingredient4, ingredient6])
recipe2 = Recipe.new("pasta", [ingredient2, ingredient3, ingredient4])

user1 = User.new("Moxxie")
user2 = User.new("Rob")

allergy1 = Allergy.new(user1, [ ingredient1, ingredient2, ingredient7])
allergy2 = Allergy.new(user2, [ ingredient2, ingredient3, ingredient6])

card1 = RecipeCard.new(user1, recipe1, "Feb. 10", 1)
card2 = RecipeCard.new(user2, recipe1, "Jan 11", 5)
card3 = RecipeCard.new(user1, recipe2, "Mar 1", 10)



binding.pry