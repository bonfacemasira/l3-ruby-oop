# TODO: CREATE CLASS AND INSTANCE METHODS (INCLUDE VARIABLES)

class Animal

    attr_reader :species
    attr_writer :species
    attr_accessor :life_expectancy

    #getter for name of the Animal
    def name
        @name
    end

    #setter for name of the Animal
    def name=(name)
        @name = name
    end

    def sound
        puts "Animal is sounding"
        puts "#{self} is sounding"
    end
end

dog = Animal.new
dog.name = "Simba"
dog.sound
dog.species = "Terrier"
dog.life_expectancy = "13"

cat = Animal.new
cat.name = "Another Cat"
puts cat
cat.sound

lioness = Animal.new
# Create name for the Animal
lioness.name = "Nala"
#rettriee the name of the Animal
puts lioness.name
lioness.sound

# TODO: Use self to access instance variables
class Plant

    @@num_of_trees = 0

    attr_accessor :species

    def initialize(species)
        @species = species
        @@num_of_trees += 1
    end

    def speak_of_species
        puts "#{self.species} is speaking"
    end

    def tree_count
        @@num_of_trees
    end
    def self.tree_count
        @@num_of_trees
    end

end
mwarubaini = Plant.new("Neem Tree")
mwarubaini.speak_of_species
puts Plant.tree_count

eucalyptus = Plant.new("Eucalyptus Tree")
mango = Plant.new("Mango Tree")
orange = Plant.new("Orange Tree")
cypress = Plant.new("Cyan Tree")

# puts mwarubaini.tree_count

puts Plant.tree_count