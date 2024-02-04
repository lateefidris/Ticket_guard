#initialize(num_tickets)
num_tickets = 15

ticket_ids = []

num_tickets.times do
  @random_combination = []
  ticket_ids.push(@random_combination)
6.times do |number|
    random_number = rand(0..9)
    @random_combination.push(random_number)
end
end
pp ticket_ids
