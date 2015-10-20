=begin

The basic lesson version:

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

=end

# Or the advanced improved version:

puts "Welcome to the moviegram."
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
puts "-- Type 'exit' to leave the moviegram."

def movie_exists (title)
    return $movies[title.to_sym]!=nil
end

def prompt_title
    puts "Please enter the movie title"
    return gets.chomp
end

def prompt_rating
    puts "Please rate this movie title from 1 to 5"
    return gets.chomp
end

def save_movie (title,rating,updated=false)
    #this will update if title exists, and add if it doesnt. 
    #logic for checking if movie entry exists should occur elsewhere.

    $movies[title.to_sym] = rating.to_i
    puts "#{title} has been " + (updated ? "updated" : "added") + " with rating of #{rating}"
end

def delete_movie (title)
    $movies.delete(title.to_sym)
    puts "#{title} has been deleted"
end

$movies = Hash.new
$movies[:Mon_Oncle] = 4
$movies[:Conan_The_Barbarian] = 5
$movies[:Rambo] = 4
$movies[:The_Castle_Of_Cagliostro] = 5
$movies[:Let_The_Right_One_In] = 4
$movies[:Ikiru] = 5
$movies[:Barton_Fink] = 4
$movies[:Barry_Lyndon] = 3
$movies[:L_Illusionist] = 3

choice=""
until choice=="exit" do

    puts "Please enter a command:"
    choice = gets.chomp.downcase

    case choice
    when "add"
        title=prompt_title
        if movie_exists(title)
            puts "That movie is already in moviegram"
        else
            save_movie(title,prompt_rating,false)
        end
    when "update"
        title=prompt_title
        if movie_exists(title)
            save_movie(title,prompt_rating,true)
        else
            puts "That title has not been added yet."
        end
    when "display"
        $movies.each { |title,rating| puts "#{title}: #{rating}" }
    when "delete"
        title=prompt_title
        if movie_exists(title)
            delete_movie(title)
        else
            puts "That title has not been added yet."
        end
    when "exit"
        puts "Good bye!"
    else
        puts "Valid commands: Add, Update, Display, Delete, Help, Exit."
    end

end
