#Birthday Helper
birthday_hash = {}

File.read('birthday_list.txt').each_line do |line|
  line.chomp
  birthday_hash[line.split(',')[0]] = (line.split(',')[1] + ',' + line.split(',')[2].chomp).strip
end

def get_age (date)
  month_hash = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 1, "Oct" => 10, "Nov" => 11, "Dec" => 12}
  month = date[0..2]
  month_num = month_hash[month]

  day = date[4..5].strip.to_i
  year = date[8..11].to_i

  birth_date = Time.local(year, month, day)
  seconds_in_year = 31557600
  age_in_years = (Time.new - birth_date) / seconds_in_year
  age_in_years.to_i
end

puts "Whose Birthday would you like to know?"
answer = gets.chomp

if !birthday_hash[answer]
  puts "That is not a name I have in my list, please make sure to capitalize the first and last name"
else
  puts "#{answer}'s Birthday is #{birthday_hash[answer]}. He is #{get_age(birthday_hash[answer])} years old."
end
