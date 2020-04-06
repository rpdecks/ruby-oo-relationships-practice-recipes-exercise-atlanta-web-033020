
class Ingredient

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    # def Ingredient.most_common_allergen
    # end
end