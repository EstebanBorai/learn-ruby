# declares tax rate constant
TAX_RATE = 0.175

# prompts the price to the user
print "Enter price (ex tax): "

# reads the use input from stdin into
# a string and stores it in the price
# variable
price = gets

# calls the to_f method on the string
# retrieved from the stdin to parse the
# string into a floating point
sub_total = price.to_f

# parenthesis on conditionals are optional
#
# if (sub_total < 0.0) then
#
# is equivalent to
#
# if sub_total < 0.0 then
if sub_total < 0.0 then
    sub_total = 0.0
end

tax = sub_total * TAX_RATE

puts "Tax on $#{sub_total} is $#{tax}, so grand total is $#{sub_total + tax}"
