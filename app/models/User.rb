
class User

    attr_accessor :name, :allergies
    @@all = []
    
    def initialize(name, allergies)
        @name = name
        @allergies = allergies
        @@all << self
    end

    def self.all
        @@all
    end

end