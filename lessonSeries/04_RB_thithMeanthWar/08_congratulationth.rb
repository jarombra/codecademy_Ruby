# The \n ensures that the prompt starts on the next line
puts "What do you want to Duckify? \n"

# Asking user for input.
# Note that there is no .downcase to preserve the capitalization.
user_input= gets.chomp

# Checking if the user input is not empty
if user_input.size == 0
    then puts "try again: "
    user_input = gets.chomp
else
end

# If user input contains s-sound (s, ce, ci, cy, x, z), then replace
# To reduce the boolean to a minimum, .downcase temporarliy before running .include method
# To maintain capitalization, run .gsub for both lower-case and capital letters.
if (user_input.downcase.include? "s") || (user_input.downcase.include? "ce") || (user_input.downcase.include? "ci") || (user_input.downcase.include? "cy") || (user_input.downcase.include? "x") || (user_input.downcase.include? "z")
    then 
    user_input.gsub!(/s/, "th")
    user_input.gsub!(/ce/, "the")
    user_input.gsub!(/ci/, "thi")
    user_input.gsub!(/cy/, "thy")
    user_input.gsub!(/x/, "kth")
    user_input.gsub!(/z/, "th")
    user_input.gsub!(/S/, "Th")
    user_input.gsub!(/Ce/, "The")
    user_input.gsub!(/Ci/, "Thi")
    user_input.gsub!(/Cy/, "Thy")
    user_input.gsub!(/X/, "Kth")
    user_input.gsub!(/Z/, "Th")
else puts "No th-thound to be found"
end

# Display the Daffy-Duckified sentence 
puts "Duckified!  \n #{user_input}"
