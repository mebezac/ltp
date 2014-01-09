#99 Bottles
number_of_bottles = 99

while number_of_bottles > 0
  puts number_of_bottles.to_s + " bottles of beer on the wall, " 
  puts number_of_bottles.to_s + " bottles of beer!"
  puts "Take one down, pass it around, "

  number_of_bottles -= 1

  if number_of_bottles == 0
    puts "No more bottles of beer on the wall!"
    puts ""

  else
    puts number_of_bottles.to_s + " bottles of beer on the wall!"
    puts ""
  end
  
end