sandwich = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

sandwich.each do | sub_array |
    sub_array.each do | makings |
        puts makings
    end
end
