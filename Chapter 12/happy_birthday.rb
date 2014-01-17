#Birthday spanks

puts "Hello, what year were you born?"
year = gets.chomp
year_as_num = year.to_i

puts "Great which month were you born in? (Ex. Feb = 2, Nov = 11)?"
month = gets.chomp
month_as_num = month.to_i

puts "And which day were you born? (Ex. 2, 13, 25)"
day = gets.chomp
day_as_num = day.to_i

birth_date = Time.local(year_as_num, month_as_num, day_as_num)

seconds_in_year = 31557600

age_in_years = ((Time.new - birth_date)/seconds_in_year).to_i

puts "Awesome! You are #{age_in_years} years old! Time for your spanks! Press enter to get them"
gets

num_of_spanks = 0

age_in_years.times do
  num_of_spanks += 1
  if num_of_spanks == 1
    puts "#{num_of_spanks} SPANK! Press enter for another!"
    gets
  else
    puts "#{num_of_spanks} SPANKS! Press enter for another!"
    gets 
  end
  
end

puts "Happy Birthday! There's some ice in the fridge if you are sore."
