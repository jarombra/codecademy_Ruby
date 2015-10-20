class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
    end
end

my_message = Message.new("here", "there")

class Email < Message
    def initialize(subject)
        @subject = subject
    end
end
