class Person
  attr_reader :first_name
  attr_writer :first_name

  attr_reader :last_name
  attr_writer :last_name

  def initialize
    @first_name = "default"
    @last_name = "default"
  end
end

person = Person.new

p person

person.first_name = "Esteban"
person.last_name = "Borai"

p person

puts person.first_name
puts person.last_name
