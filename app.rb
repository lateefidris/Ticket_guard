require_relative "ticket"
require_relative "booth"
require_relative "guard"

security = Guard.new

security.check_in
