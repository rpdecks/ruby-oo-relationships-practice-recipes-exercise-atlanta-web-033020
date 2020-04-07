require 'pry'

class Recipe
    attr_accessor
    attr_reader :ingredients
    
    @@all = []

    def initialize(name, creator)
        @name = name
        @creator = creator
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all.max_by do |recipe| 
            recipe.users.count
        end
    end

    def users
        a = RecipeCard.all.select do | card |
            card.recipe == self
        end
        a.map { |cards| cards.user}.uniq
    end

    def allergens
        # this collects all the ingredients we have that cause at least one of our users is allergic to
        allergen_ingredients = Allergy.all.map do | allergy |
            allergy.ingredients
        end
        # select loops over our recipe ingredients and checks to see if each one is included in the array we compiled above and returns an array with all those that match up
        self.ingredients.select do |ingredient|
            allergen_ingredients.include?(ingredient)
        end
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
end