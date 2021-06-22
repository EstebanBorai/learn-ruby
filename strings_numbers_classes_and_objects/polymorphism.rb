# the ability to have different classes containing methods
# with the same name is known as "Polymorphism" in Object
# Oriented Programming

class Thing
    def set_name(name)
        @name = name
    end

    def get_name
        return @name
    end
end

class Treasure
    def initialize(name, description)
        @name = name
        @description = description
    end

    # overrides this class implementation of to_s
    def to_s
        "The #{@name} Treasure is #{@description}"
    end
end

first_thing = Thing.new
first_thing.set_name("A lovely thing")

puts first_thing.get_name

first_treasure = Treasure.new("Gold Digger", "This is a Gold Digger")
second_treasure = Treasure.new("Bag of Coins", "This is a bag full of coins")

puts first_treasure.to_s
puts second_treasure.to_s

puts "Inspecting the 'first_treasure': #{first_treasure.inspect}"
