puts "Hi there, what is your name?"
name = gets.chomp
puts "Nice to meet you " + name + ". What is your favorite number?"
number = gets.chomp

puts "You like " + (number.to_s) + "? What a pathetic excuse for a number, my favorite is " + (number.to_i + 1).to_s + "!"