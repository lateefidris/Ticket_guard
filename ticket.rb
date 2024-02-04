#"A command line interface app to simulate admission into a concert"
class Ticket
    attr_accessor :ticket_id , :ticket_used, :ticket_info
    def initialize()
        @ticket_info = Hash.new
        random_combination = []
       
        6.times do |number|
            random_number = rand(0..9)
            random_combination.push(random_number)
        end
       
        @ticket_id = random_combination.join(",").gsub(",","")
        @ticket_used = false
        @ticket_info[@ticket_id] = @ticket_used

    end

    def to_s
        if self.ticket_used == true
            action = "has been"
        else 
            action = "has not been" 
        "ticket:#{ticket_id} #{action} used"
        end
    end
    
    def ticket_id
        @ticket_id
    end

end
