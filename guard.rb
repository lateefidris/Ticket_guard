class Guard
  def initialize
    @booth = Booth.new

    @booth.open
   
  end

  def check_in
    puts "Are you ready to check in?"
    5.times do
      answer = gets.chomp.downcase

      if answer == "yes"
        5.times do
          puts "what is your ticket number?"
          ticket_number = gets.chomp
          if @booth.ticket_exists?(ticket_number)
            puts "Ticket with ID #{ticket_number} exists.
            You may enter"
          break
          else
            puts "Ticket with ID #{ticket_number} does not exist."
          end
    
        end
      else
        puts"Whenever your ready, come back."
      end
      break
    end

  end
end
