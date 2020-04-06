# require 'pry'

class RecipeCard

    attr_accessor :user, :recipe, :date, :rating
    attr_reader
    @@all = []

    def initialize(user, recipe, date, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end