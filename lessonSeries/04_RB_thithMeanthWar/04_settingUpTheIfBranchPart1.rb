print "User input"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    puts "s is found"
end
