class Student < Person

    def initialize(f,l)
        super(f,l)
    end
    def learn
    puts "i get it"
    end

end


class Instructer < Person

    def initialize(f,l)
    super(f,l)
    end

    def teach 
    puts "everyting in ruby is an object"
    end

end



class Person

    
    def initialize(f,l)
        @first_name = f
        @last_name = l 
    end
    
    def hi 
        puts "hi my name is #{@first_name}"
    end

end

chris = Instructer.new("Chris", "King")
christina = Student.new("Christina", "Queen")

chris.teach
christina.learn 