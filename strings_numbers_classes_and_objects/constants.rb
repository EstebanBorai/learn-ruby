# ruby treats uppercase identifiers as
# constants
PI = 3.14

puts("The value of PI is #{PI}")

# attempt to reassign to a constant value
# will print warnings to the console
PI = 3.15

puts("The value of PI is now #{PI}")

# The value of PI is 3.14
# strings_numbers_classes_and_objects/constants.rb:9: warning: already initialized constant PI
# strings_numbers_classes_and_objects/constants.rb:3: warning: previous definition of PI was here
# The value of PI is now 3.15
