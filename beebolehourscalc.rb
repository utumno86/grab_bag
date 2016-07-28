#! bin/ruby

puts "What time did you come in?"
start_time = gets.chomp
puts "Half hour for lunch? (Y/N)"
lunch = gets.chomp
lunch_break = true
if(lunch == 'Y')
  lunch_break = true
elsif (lunch == 'N')
  lunch_break = false
else
  puts "Input #{lunch} is not a valid input. We're going to assume you didn't eat lunch."
  lunch_break = false
end




puts Time.new
