class Thing
  # The attr_accessor symbol is a shorthand for both attr_writer and attr_reader
  attr_accessor :description
  attr_writer :name

  def initialize(name, description)
    @name = name
    @description = description
  end

  def name
    return @name.capitalize
  end
end

thing = Thing.new("phone", "Device used to communicate with others")
p thing
puts thing.name

thing.description = "a smart device to install your favorite apps"
p thing
puts thing.description

thing.description = thing.description.capitalize
p thing
