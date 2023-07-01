require_relative 'publishers/base_subject'
require_relative 'publishers/subject'
require_relative 'subscribers/base_observer'
require_relative 'subscribers/observer_a'
require_relative 'subscribers/observer_b'

# The client code.
subject = Publishers::Subject.new

observer_a = Subscribers::ObserverA.new
subject.attach(observer_a)

observer_b = Subscribers::ObserverB.new
subject.attach(observer_b)

puts ''
subject.some_business_logic
puts ''
subject.some_business_logic

puts ''
subject.detach(observer_a)

puts ''
subject.some_business_logic
