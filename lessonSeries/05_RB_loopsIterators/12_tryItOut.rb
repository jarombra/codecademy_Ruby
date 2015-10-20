odds = [1,3,5,7,9]

odds.each { |x|
    x *= 2
    print "#{x}"
}

=begin Or this works too:

odds.each do |x|
    x *= 2
    print "#{x}"
end

=end
