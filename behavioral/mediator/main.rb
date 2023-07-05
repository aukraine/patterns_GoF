require_relative 'component'
require_relative 'mediator'

# The client code.
c1 = Component1.new
c2 = Component2.new
ConcreteMediator.new(c1, c2)

puts 'Client triggers operation A.'
c1.do_a

puts ''
puts 'Client triggers operation B.'
c1.do_b

puts ''
puts 'Client triggers operation C.'
c2.do_c

puts ''
puts 'Client triggers operation D.'
c2.do_d
