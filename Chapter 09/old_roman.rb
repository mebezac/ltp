#old_roman

def number_to_old_roman number
  number_as_integer = number.to_i
  thousands = number_as_integer / 1000
  five_hundreds = (number_as_integer % 1000) / 500
  hundreds = (number_as_integer % 500) / 100
  fifties = (number_as_integer % 100) / 50
  tens = (number_as_integer % 50) / 10
  fives = (number_as_integer % 10) / 5
  ones = (number_as_integer % 5)

  puts "You entered " + number + " which in old Roman numerals is:"
  puts "M" * thousands + "D" * five_hundreds + "C" * hundreds + "L" * fifties + "X" * tens + "V" * fives +"I" * ones
end

puts "What number would you like to convert to old Roman numerals?"
number_to_convert = gets.chomp
number_to_old_roman (number_to_convert)