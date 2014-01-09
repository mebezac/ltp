#Deaf Grandma
puts "HELLO SONNY! WHAT WOULD YOU LIKE TO TELL ME?"
number_of_byes = 0

while number_of_byes < 3
  tell_grandma = gets.chomp
  if tell_grandma == "BYE!"
    puts "HUH?"
    number_of_byes += 1
  elsif tell_grandma == tell_grandma.upcase
    puts "NO, NOT SINCE " + ((rand(20)) + 1930).to_s + "!"
    number_of_byes = 0
  else
    puts "HUH?! SPEAK UP, SONNY!"
    number_of_byes = 0
  end
end

puts "OK, NICE SEEING YOU!"