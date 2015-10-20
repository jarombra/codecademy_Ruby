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
