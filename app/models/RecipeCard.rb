# require 'pry'

class RecipeCard

    attr_accessor :user, :recipe
    attr_reader
    @@all = []

    def initialize(user, recipe)
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

end