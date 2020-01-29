require 'pry'

class Person
    
    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account
    

    def happiness=(happiness)
        # you cant do self.happiness becuase its just referring to itself in a big loop
        @happiness = happiness
        self.normalize_pts
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        self.normalize_pts
    end

    def initialize (name)
        @name = name
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness >7
    end

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        # self.normalize_pts
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def normalize_pts 
        if self.hygiene > 10
            self.hygiene = 10
        elsif self.hygiene < 0
            self.hygiene = 0
        end
        if self.happiness > 10
            self.happiness = 10
        elsif self.happiness < 0
            self.happiness = 0
        end
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        # self.normalize_pts
        p "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness += 3
        friend.happiness += 3
        # self.normalize_pts
        # friend.normalize_pts
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            output = "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            output = "blah blah sun blah rain"
        else 
            output ="blah blah blah blah blah"
        end
        # self.normalize_pts
        # person.normalize_pts
        output
    end

end

