
class User

    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        # @allergies = allergies
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        a = RecipeCard.all.select do |card|
            card.user == self
        end
        a.map do |card| 
            card.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        # Allergy.all.select { |allergen| allergen.user == self }.map { |allergen| allergen.ingredient }.uniq
        a = Allergy.all.select do |allergy|
            allergy.user == self
        end
        a.map do |allergy|
            allergy.ingredient
        end
        a.uniq
    end

    def top_three_recipes
        
    end

    def most_recent_recipe
        
    end


end