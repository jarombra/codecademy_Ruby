movies = {
    Mon_Oncle: 4,
    Conan_The_Barbarian: 5,
    Rambo: 4,
    The_Castle_Of_Cagliostro: 5,
    Let_The_Right_One_In: 4,
    Ikiru: 5,
    Barton_Fink: 4,
    Barry_Lyndon: 3,
    L_Illusionist: 3
}

puts "Welcome to the moviegram."
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end
