puts "What's your spoken language?"
puts "('English', 'French', 'German', 'Finnish', 'Japanese')"
greeting = gets.chomp

# Add your case statement below!
case greeting
    when "English" then puts "Hello!"
    when "French" then puts "Bonjour!"
    when "German" then puts "Guten Tag!"
    when "Finnish" then puts "Haloo!"
    when "Japanese" then puts "こんにちは!"
    else puts "I don't know that language!"
end
