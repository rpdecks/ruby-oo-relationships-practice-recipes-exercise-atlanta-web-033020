
class Ingredient

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def users
        allergens =  Allergy.all.select do |allergy|
            allergy.ingredient == self
        end
        allergens.map do |allergy|
            allergy.user
        end
        allergens.uniq
    end

    def self.most_common_allergen
        Ingredient.all.max_by { |ingredient| ingredient.users.count }
    end

    # def self.most_common_allergen
    #     allergy_ary = []
    #     Allergy.all.max_by do |allergy| 
    #         allergy.users.count
    #     end
    #     allergy_ary.uniq 
    # end
end