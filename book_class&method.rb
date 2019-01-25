require 'date'
require 'time'

class Book 
    attr_accessor :due_date
    @@on_shelf = []
    @@on_loan = []
    
    
    
    def initialize(title, author, isbn)
        @title = title
        @author = author
        @isbn = isbn
        @due_date = nil

    end

    def self.create(title, author, isbn)
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
        @@on_loan.include?(self)
    end


    def self.current_due_date
        Time.now 
    end

    def borrow 
        
        if (self).lent_out? 
             puts "this book is on loan"
        else 
            @@on_loan    << (self)
            @@on_shelf.delete(self)
            self.due_date = Book.current_due_date
            puts "true"
        end
    end

    def return_to_library
        if self.lent_out?
        @@on_shelf << self
        @@on_loan.delete(self)
        self.due_date = nil
        puts "true"
        else
            puts "false"
        end      
    end

    def self.over_due
        @@on_loan.each do |book|
        if book.due_date < Time.now
            p book
        else 
            puts "nothing over due"

        end

        end
        
    end

end
       
hill = Book.create("the story of the hill", "yudi", 770)
Book.create("the israel tale","moe", 8)
p Book.available
puts hill.lent_out? 
hill.borrow

puts hill.lent_out?

Book.over_due