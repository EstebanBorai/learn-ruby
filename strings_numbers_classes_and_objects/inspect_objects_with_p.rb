class Person
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @is_available = true
    end
end

john = Person.new("John", "Appleseed", 30)

# Prints the "inspect" output to stdout
# <Person:0x00005606dca44938 @first_name="John", @last_name="Appleseed", @age=30, @is_available=true>
p(john)

# Returns the name of the class
puts Person.to_s
