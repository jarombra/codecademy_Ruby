print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!
print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!
print "What city are you from?"
city_name = gets.chomp
city_name.capitalize!
print "What state or province are you from?"
state_name = gets.chomp
state_name.upcase!

print "Hey, you're #{first_name}, right? Uhhhh, #{first_name} #{last_name}? Yeah! We're both from #{city_name}! No no, not that #{city_name}, the one in #{state_name}. Yeah."