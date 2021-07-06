class Person
    attr_reader :name, :hygiene
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    def name
        @name
    end
    
    def happiness=(happiness)

        if happiness < 0
           @happiness = 0
        elsif
           happiness > 10
           @happiness = 10
        else
           @happiness = happiness
        end
    end

    def hygiene=(hygiene)

        if hygiene < 0
           @hygiene = 0
        elsif
           hygiene > 10
           @hygiene = 10
        else
           @hygiene = hygiene
        end
    end

    def happy? 
        @happiness > 7 ? true : false
    end

    def clean? 
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        if salary == 100
            @bank_account = @bank_account + salary 
            return 'all about the benjamins'
        end
    end

    def take_bath
     self.hygiene=(@hygiene + 4)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

        if topic == 'politics'
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif
            topic == 'weather'
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

    
end
