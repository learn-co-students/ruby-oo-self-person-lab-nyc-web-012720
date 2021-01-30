# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

    def initialize (name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(num)
        @happiness = num 
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 

    def hygiene=(num)
        @hygiene = num 
        @hygiene = 10 if hygiene > 10 
        @hygiene = 0 if hygiene < 0
    end 

    def happy?
        @happiness > 7 
    end 

    def clean?
        @hygiene > 7 
    end 

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    
    end 

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end 

    def call_friend (friend)
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (friend, topic)
        if topic == "politics" 
         self.happiness=(@happiness - 2)
         friend.happiness=(friend.happiness - 2)
         return 'blah blah partisan blah lobbyist'
        elsif
            topic == "weather" 
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            return "blah blah sun blah rain" 
        else
            topic == "other"
            return  "blah blah blah blah blah"
        end 
        #  object.each {|o| self.happiness -= 2}
    end 



end 