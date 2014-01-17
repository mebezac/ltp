#Roman to Integer

def roman_to_integer (roman)
  roman_numerals = {'M' => 1000, 'D' =>  500, 'C' =>  100, 'L' =>  50, 'X' =>  10, 'V' =>  5, 'I' =>  1}
  index = (roman.length) - 1
  total_value = 0
  previous_value = 0
  while index >=0
    letter = roman[index].upcase
    index -= 1
    value = roman_numerals[letter]
    if !value
      puts "Please enter a valid Roman numeral!"
      return
    end

    if value < previous_value
      value *= -1
    else
      previous_value = value
    end
    total_value += value
  end
  puts "You entered #{roman.upcase}, which is: #{total_value}"
end

puts "Hello, please enter a Roman numeral to have it converted."

roman = gets.chomp

roman_to_integer(roman)
