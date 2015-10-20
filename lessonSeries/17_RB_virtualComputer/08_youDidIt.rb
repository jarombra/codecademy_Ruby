class Computer
    @@users = {}
    
    def Computer.get_users
        return @@users
    end
    
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} created at #{time} by #{@username}"
    end
end

my_computer = Computer.new("jasonbrain", "1234")
my_computer.create("You_Did_It.ry")

puts "Users: #{Computer.get_users}"