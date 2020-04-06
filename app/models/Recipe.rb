require 'pry'

class Recipe
    attr_accessor
    attr_reader
    
    @@all = []

    def initialize(name, ingredients)
        @name = name
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        a = RecipeCard.all.max_by {|i| RecipeCard.all.count(i)}
        a.recipe
    end

    def users
        users = []
        RecipeCard.all.each do |card|
            if card.recipe == self
                users << card.user
            end
        end
        users
    end

    def ingredients
        @ingredients
    end

    def allergens
        # allergy_ary = []
        # User.all.each do |user|
        #     allergy_ary << user.allergies
        # end
        # new_ary = allergy_ary.flatten.uniq!
        # new_ary.select do |ingredient|
        #     ingredient == @ingredient
        # end

        #Does this loop over each ingredient and then loop over each User's allergies to compare and then add the allergy to our array if it exists in the users allergies array?
        allergy_ary = []
        self.ingredients.each do |ingredient|
            Allergy.all.each do |user|
                if user.ingredients.include? ingredient
                    allergy_ary << ingredient
                end
            end
        end
        allergy_ary.uniq!
    end

    def add_ingredients(ingredients_ary)
        @ingredients += ingredients_ary
    end
end