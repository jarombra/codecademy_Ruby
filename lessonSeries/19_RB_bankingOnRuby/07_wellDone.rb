class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end

    private

    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end

    public
    
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: #{@balance}"
        else
            pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdraw #{amount}. New balance: $#{@balance}"
        else
            pin_error
        end
    end
end

checking_account = Account.new("Jason")
my_account = Account.new("Jason")
my_account.withdraw(11, 50)
my_account.display_balance(1234)
my_account.withdraw(1234, 50)
my_account.display_balance(1234)