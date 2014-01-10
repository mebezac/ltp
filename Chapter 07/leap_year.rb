#Leap Year

puts "Hello! Let's figure all the leap years!"
puts "First, what is year you would like to start with?"
first_year = gets.chomp
first_year_number = first_year.to_i

puts "OK, we'll start with " + first_year + " where would you like to end?"
end_year = gets.chomp
end_year_number = end_year.to_i

puts "OK, and we'll end with " + end_year + ". Here are the leap years!"

year_to_start = first_year_number - 1

while year_to_start < end_year_number
  year_to_start += 1

  if year_to_start % 100 == 0 && year_to_start % 400 == 0
    print year_to_start.to_s + ", "

  elsif year_to_start % 4 == 0 && year_to_start % 100 != 0
    print year_to_start.to_s + ", "

  else 

  end 

end  
puts ""