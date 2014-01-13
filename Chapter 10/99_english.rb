# 99 Bottles with English words instead of numbers

#If you run, make sure to have english_number.rb in same folder
require_relative 'english_number.rb'

number_of_bottles = 999

while number_of_bottles > 0
  puts english_number(number_of_bottles) + " bottles of beer on the wall, " 
  puts english_number(number_of_bottles) + " bottles of beer!"
  puts "Take one down, pass it around, "

  number_of_bottles -= 1

  if number_of_bottles == 0
    puts "No more bottles of beer on the wall!"
    puts ""

  else
    puts english_number(number_of_bottles) + " bottles of beer on the wall!"
    puts ""
  end
  
end
