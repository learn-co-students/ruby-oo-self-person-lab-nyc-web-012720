# your code goes here
require 'pry'
class Person
    # 1. class var
    # 2. accessor
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    # 3. initializer
    def initialize (name, bank_account = 25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        # @friend = friend
        
    end 
    # 4. instance method
    def bank_account= (new_account)
        @bank_account = new_account
    end 
    # def happiness= (new_happiness)
    #     @happiness = new_happiness
    # end 
    def happiness
        @happiness.clamp(0,10)
    end
    def hygiene
        @hygiene.clamp(0,10)
    end
    
    def happy?
        if (happiness>7)
            true
        else
            false
        end 
    end 
    def clean?
        if (hygiene>7)
            true 
        else 
            false
        end
    end 

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        # @hygiene += 4
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end 
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 
    def call_friend (puppei)
        self.happiness += 3
        puppei.happiness += 3 
        "Hi #{puppei.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (puppei, topic)
        if (topic == "politics")
            self.happiness -= 2
        puppei.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1
        puppei.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end


    end 
    
    # 5. class metho
end
