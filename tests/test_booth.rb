require "./ticket"
require "./booth"
require 'minitest/autorun'

class TestGuard < Minitest::Test
  def test_add
    booth = Booth.new  
    num_tickets = rand(1..10)

    num_tickets.times do
      booth.add(Ticket.new)
    end
    assert_equal true, num_tickets == booth.num_tickets, "Addition method failed"
  end


  def test_ids
    booth = Booth.new  
    ticket = Ticket.new

    booth.add(ticket)
  
    assert_equal true, booth.ticket_exists?(ticket.ticket_id), "ID method failed"
  end 
end
