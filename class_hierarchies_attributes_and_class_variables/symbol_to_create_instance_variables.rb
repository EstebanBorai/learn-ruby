class Person
  attr_accessor :first_name
  attr_accessor :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class Developer < Person
  def initialize(first_name, last_name, programming_language)
    super(first_name, last_name)

    @programming_language = programming_language
  end
end

person = Person.new("John", "Doe")

p person

developer = Developer.new("Esteban", "Borai", "Rust")

p developer
