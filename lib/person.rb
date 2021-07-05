# your code goes here

# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name


def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
end

def happiness
    @happiness.clamp(0,10)
end

def hygiene #getter method
    @hygiene.clamp(0,10)
end

def hygiene=(hygiene) #setter
    @hygiene = hygiene 
end

def happy?
    happiness > 7 ? true : false 
end

def clean?
    hygiene > 7 ? true : false
end

def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"

end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist" 
    elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end

end





end




