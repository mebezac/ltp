#Sort Array

puts "Hello, enter as many words as you like below and I will alphabetize them."
puts "Just press enter on a blank line to get me to start"
words = []
blank_line_entered = false

while blank_line_entered == false

  word_entered = gets

  # Downcase to get rid of confusing Capitals come before lowercase
  words.push word_entered.chomp.downcase

  if word_entered == "\n"
    blank_line_entered = true
  end

end  

puts "Here is a sorted list!"

# Removes nil at end of array
words.pop
puts words.sort.join(', ')
