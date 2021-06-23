# A `Thing` could be any object with a name and a description
class Thing
  def initialize(name, description)
    @name = name
    @description = description
  end

  def get_name
    return @name
  end

  def set_name(name)
    @name = name
  end

  def get_description
    return @description
  end

  def set_description(description)
    @description = description
  end
end

# A `Treasure` is also a thing, but a `Treasure` could have a value as well.
# We can say that a `Treasure` is a `Thing` with a value, so we inherit the
# `Thing` class and provide a new field `value` to store such `Thing` value
class Treasure < Thing
  def initialize(name, description, value)
    super(name, description)

    @value = value
  end

  def get_value
    return @value
  end

  def set_value(value)
    @value = value
  end
end

# A `Room` could also be a `Thing`, but have another field, which is not a
# value, but exits
class Room < Thing
  def initialize(name, description, exits)
    super(name, description)

    @exits = exits
  end

  def get_exits
    return @exits
  end

  def set_exits(exits)
    @exits = exits
  end
end

glass_of_water = Thing.new("Glass of water", "Cilindric piece of glass filled with water")

gold_mine = Treasure.new("Gold Mine", "A place where gold is mined", 15000.100)

kitchen = Room.new("Kitchen", "House kitchen", 4)

p glass_of_water
p gold_mine
p kitchen

glass_of_water.set_name("Big Glass of water")

p glass_of_water

gold_mine.set_name("Goldmine")
gold_mine.set_value(1000000)

p gold_mine

kitchen.set_exits(5)

p kitchen
