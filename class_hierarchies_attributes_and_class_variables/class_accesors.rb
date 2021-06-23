class Person
  def initialize
    @first_name = "default"
    @last_name = "default"
  end

  # A method with the same name as the instance variable acts as a "getter"
  # which allows access to `Person`'s instance `first_name` variable
  def first_name
    return @first_name
  end

  # A method with the same name as the instance variable but with a postfixed
  # equal sign, acts as a "setter" for a `Person`'s instance `last_name`
  # variable
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    return @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end
end

person = Person.new

p person

person.first_name = "Esteban"
person.last_name = "Borai"

p person

puts person.first_name
puts person.last_name
