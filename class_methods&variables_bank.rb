class BankAccount
    @@interest_rate = 13.5
    @@accounts = []

    attr_accessor :balance 

    def initialize   
        @balance = 0 
    end

    def deposit(amount)
        @balance += amount
        return @balance
    end

    def withdraw(amount)
        @balance -= amount
        return @balance
    end

    def self.create
          account = BankAccount.new
        @@accounts << account
        return account
    end

    def self.total_funds
        sum = 0
        @@accounts.each do |a|
            sum += a.balance   
        end
        puts sum
    end

    def interest_rate
       a = total_funds / 100 * @interest_rate
       return a + total_funds
    
    end
end

my_account = BankAccount.create
your_account = BankAccount.create

puts my_account.balance

 my_account.deposit(200)
your_account.deposit(300)
 BankAccount.total_funds




