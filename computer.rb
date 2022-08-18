# super class
class Computer
    attr_accessor :model, :country, :year, :storage
    @@system_memory = 32

    def initialize(model, country, year)
        @model = model
        @country = country
        @year = year
        @storage = 512
    end
    
    def print_computer
        puts "Computer: #{self.model}, Year: #{self.year}"
    end

    def self.show_memory
        @@system_memory
    end
end

# TODO: Implement class that inherits from Computer class

class Hp < Computer

    @@system_memory = 64
    def initialize(model, country, year)
        super(model, country, year)
        @storage = 256
    end

    def print_computer
        puts "Computer #{}, Year:#{self.year}, Country:#{self.country}"
    end

end

comp1 = Hp.new("Envy", "USA", 2022)
comp1.print_computer
puts Hp.show_memory
puts comp1.storage

class MacBook < Computer
end

comp2 = MacBook.new("PRO M1", "USA", 2022)
comp2.print_computer
puts MacBook.show_memory
puts comp2.storage

# TODO: Use the super keyword to access attributes and methods from Computer
