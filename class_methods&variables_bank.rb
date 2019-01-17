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
            sum += a  
            return sum
        end
    end

    def interest_rate
       a = total_funds / 100 * @interest_rate
       return a + total_funds
    
    end
end

my_account = BankAccount.create
your_account = BankAccount.create

puts my_account.balance
# puts BankAccount.total_funds
puts my_account.deposit(200)






require 'time'

class Book 
    attr_accessor due_date
    @@on_shelf = []
    @@on_loan = []
    
    
    def initialze(title, author, isbn)
        @title = title
        @author = author
        @isbn = isbn
    end

    def self.create
       new_book = Book.new(title, author, isbn)
       @@on_shelf << new_book
        return new_book
    end

    def self.available
        return @@on_shelf
    end

    def self.borrowed 
        return @@on_loan
    end

    def self.browse
        return @@on_shelf.sample
    end

    def lent_out? 
        # i dont know how to reference to the instance and then the instance to the array
    end


    # i dont know what to code
    def self.current_due_date
        @@on_loan.each do |book|
            due_date = book.time.now + 4 days
            return due_date
        end
        
    end

    # need help here
    def borrow 
        avaliable = (reference to instance).lent_out? 
        if avaliable == true
             puts "this book is on loan"
        else 
            current_due_date
            @@on_loan    << (instance)
            return "puts true"
        end
    end

    # need help here
    def return_to_library
        lent_out = (instance).lent_out?
        if lent_out == true 
              @@on_shelf << (instance)
        else
            puts "false"
        end      
    end

    # need help
    def self.over_due
    
    end
        


end
            
