require_relative 'strategy'
require_relative 'context'

# The client code picks a concrete strategy and passes it to the context. The
# client should be aware of the differences between strategies in order to make
# the right choice.

puts 'A way will be found for a Bike trip'
context = Context.new(BikeStrategy.new)
context.find_route

puts 'A way will be found for a Car trip'
context.strategy = CarStrategy.new
context.find_route

puts 'A way will be found for a Bus trip'
context.strategy = BusStrategy.new
context.find_route
