# Class Extension

class Integer
  def to_roman

# digits of number
  hundreds_digit = (self % 1000) / 100
  tens_digit = (self % 100) / 10
  ones_digit = (self % 10)

  thousands = self / 1000
  nine_hundreds = 0
  five_hundreds = (self % 1000) / 500
  four_hundreds = 0
  hundreds = (self % 500) / 100
  ninties = 0
  fifties = (self % 100) / 50
  fourties = 0
  tens = (self % 50) / 10
  nines = 0
  fives = (self % 10) / 5
  fours = 0
  ones = (self % 5)

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
  roman = "M" * thousands + "CM" * nine_hundreds + "D" * five_hundreds + "CD" * four_hundreds +"C" * hundreds + "XC" * ninties + "L" * fifties + "XL" * fourties + "X" * tens + "IX" * nines + "V" * fives + "IV" * fours + "I" * ones
  roman 
  end
end

# Tests
puts 2944.to_roman
puts 30.to_roman
puts 1999.to_roman
