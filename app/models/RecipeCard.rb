require 'pry'
require 'date'

class RecipeCard

    attr_reader :user, :recipe, :date, :rating
    @@all = []

    def initialize(user, recipe, rating)
        @user = user
        @recipe = recipe
        @date = Date.today
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end