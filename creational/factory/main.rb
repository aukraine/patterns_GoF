require_relative 'creator'
require_relative 'delivery'

# The client code works with an instance of a concrete creator, albeit through
# its base interface. As long as the client keeps working with the creator via
# the base interface, you can pass it any creator's subclass.
def client_code(creator)
  delivery = creator.create_delivery
  puts "Created of #{delivery.type} Delivery via #{creator.class}"
end

puts 'Delivery by Truck'
client_code(TruckDeliveryCreator.new)

puts ''
puts 'Delivery by Ship'
client_code(ShipDeliveryCreator.new)

puts ''
puts 'Delivery by Plane'
client_code(PlaneDeliveryCreator.new)
