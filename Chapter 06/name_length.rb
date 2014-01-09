puts "Hello! Let's count the number of letters in your full name!"

puts "First, what is you full first name?"
first_name = gets.chomp
puts "Your first name is " + first_name + " which has " + first_name.length.to_s + " letters in it."

puts "Second, what is you full middle name?"
middle_name = gets.chomp
puts "Your middle name is " + middle_name + " which has " + middle_name.length.to_s + " letters in it."

puts "Third, what is you full last name?"
last_name = gets.chomp
puts "Your last name is " + last_name + " which has " + last_name.length.to_s + " letters in it."

puts "So, your full name is " + first_name + " " + middle_name + " " + last_name 
puts "and the total number of letters in your full name is: " + (first_name.length + middle_name.length + last_name.length).to_s