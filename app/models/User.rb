
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
        a = []
        RecipeCard.all.select do |card|
            card.user == self
            a << card.recipe
        end
        a
    end

    def add_recipe_card
        
    end

end