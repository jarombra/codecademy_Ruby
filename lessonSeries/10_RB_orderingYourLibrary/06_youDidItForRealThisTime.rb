def alphabetize(arr, rev=false)
    arr.sort!
    if rev == true 
        arr.reverse!
    end
    return arr
end

numbers = [4, 2, 6, 2, 8, 0, -2, -51]

puts alphabetize(numbers)

# Or:

def alphabetize(arr, rev = false)
        if rev
            arr.sort! {|a, b| b <=> a }
        else
            arr.sort! {|a, b| a <=> b }
        end
    end
    numbers = [4, 2, 6, 2, 8, 0, -2, -51]
    puts "#{alphabetize(numbers)}"
    puts "#{alphabetize(numbers, true)}"