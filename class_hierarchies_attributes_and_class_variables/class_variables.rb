# Class Variables are the variables that are defined inside the class, where
# only the class method has access to. Class Variables starts with @@ and must
# be initialized first then they can be used in method definitions.
class Jar
  attr_reader(:label, :count)

  # `total_jars` is shared with all decendants of Jar
  # every instance of `Jar` (subclasses as well) share the same
  # reference to `total_jars`
  @@total_jars = 0

  def initialize
    @@total_jars += 1
    @label = "Untitled Jar"
    @count = 0
  end

  def label=(label)
    @label = label.capitalize
  end

  def total_jars
    return @@total_jars
  end

  def add(many)
    @count += many
  end

  def add_one
    @count += 1
  end
end

jar = Jar.new

jar.label = "Cookies"
jar.add 10
jar.add 10

p jar

puts jar.total_jars

# <Jar:0x00007f9e0791e108 @label="Cookies">
# 11

class CookieJar < Jar
end

class PickleJar < Jar
end

cookie_jar = CookieJar.new
pickle_jar = PickleJar.new

cookie_jar.add_one
cookie_jar.add_one
cookie_jar.add_one

pickle_jar.add 5

p cookie_jar
p pickle_jar

# We will have "3" as value for `total_jars`
# @@total_jars is shared by all instances of Jar
p jar.total_jars
p cookie_jar.total_jars
p pickle_jar.total_jars
