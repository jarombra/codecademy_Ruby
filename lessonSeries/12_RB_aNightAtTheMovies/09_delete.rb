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
    puts "Please enter the movie title"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Please rate this movie title from 1 to 5"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} rated at #{rating}/5 was added."
    else
        puts "That title is already in the moviegram."
    end
when "update"
    puts "Please enter a moviegram title to update the rating of"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "That title has not been added yet."
    else
        puts "Please rate this movie title from 1 to 5"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} rated at #{rating}/5 was updated."
    end
when "display"
    movies.each do |title, rating|
        puts "#{title}: #{rating}"
    end
when "delete"
    puts "Please enter a title to remove from moviegram"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "That title has not been added yet."
    else
        movies.delete(title.to_sym)
        puts "Removed #{title} from the moviegram."
    end
else
    puts "Error!"
end
