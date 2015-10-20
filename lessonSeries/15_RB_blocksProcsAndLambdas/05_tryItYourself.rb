def double(n)
    yield n
end

double(2) { |n| n * 2 }


=begin A more explained version could be this (commented out):

def double(n)
    puts "This is just to show we're in the method"
    puts "But we're about to yield on the next line..."
    yield n
    puts "We just yielded to the called method block."
    Puts "And we're back in the method - all done."
end

double(2) { |n| n * 2 }

=end
