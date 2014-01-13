#modern_roman

def number_to_modern_roman number
  number_as_integer = number.to_i
# digits of number
  hundreds_digit = (number_as_integer % 1000) / 100
  tens_digit = (number_as_integer % 100) / 10
  ones_digit = (number_as_integer % 10)

  thousands = number_as_integer / 1000
  nine_hundreds = 0
  five_hundreds = (number_as_integer % 1000) / 500
  four_hundreds = 0
  hundreds = (number_as_integer % 500) / 100
  ninties = 0
  fifties = (number_as_integer % 100) / 50
  fourties = 0
  tens = (number_as_integer % 50) / 10
  nines = 0
  fives = (number_as_integer % 10) / 5
  fours = 0
  ones = (number_as_integer % 5)

  if hundreds_digit == 9 || hundreds_digit == 4
    five_hundreds = 0
    hundreds = 0

    if hundreds_digit == 9
      nine_hundreds = 1
    elsif hundreds_digit == 4
      four_hundreds = 1
    end
  end

  if tens_digit == 9 || tens_digit == 4
    fifties = 0
    tens = 0

    if tens_digit == 9
      ninties = 1
    elsif tens_digit == 4
      fourties = 1
    end
  end

  if ones_digit == 9 || ones_digit == 4
    fives = 0
    ones = 0

    if ones_digit == 9
      nines = 1
    elsif ones_digit == 4
      fours = 1
    end
  end

  puts "You entered " + number + " which in modern Roman numerals is:"
  puts "M" * thousands + "CM" * nine_hundreds + "D" * five_hundreds + "CD" * four_hundreds +"C" * hundreds + "XC" * ninties + "L" * fifties + "XL" * fourties + "X" * tens + "IX" * nines + "V" * fives + "IV" * fours + "I" * ones
end

puts "What number would you like to convert to modern Roman numerals?"
number_to_convert = gets.chomp
number_to_modern_roman (number_to_convert)
