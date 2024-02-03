require_relative "ticket"



class Booth
  def initialize
    @ticket_list = []
    @ticket_ids = []
    @ticket_used = Hash.new

  end

  def open

    puts "Welcome to the ticket booth. Would you like to purchase a ticket?"
    5.times do
      answer = gets.chomp.downcase
  
      if answer == "yes"
        puts "Whats your name?"
        name = gets.chomp
        rand_num = rand(1..9)
        ticket = Ticket.new
        @ticket_list.push(ticket)
        @ticket_ids.push(ticket.ticket_id)
    

        ticket_number = ticket.ticket_id
        ticket_verified = true

        
        
        puts "Ok #{name}, here is your ticket number:#{ticket_number}"
        puts "Don't lose it, you will need it for entry."

        break
      elsif answer == "no"
        puts "Ok. Well, come back when you change your mind."
        break
      else
        puts "Can you please answer with yes or no?"
      end
    end
  end
  
  def num_tickets
    @ticket_list.length
  end
  
  def tickets
    @ticket_list
  end

  def ids
    @ticket_ids
  end

  def ticket_exists?(ticket_id)
    @ticket_ids.include?(ticket_id)
  end
 
end    
