require 'json'

require_relative 'flyweight'
require_relative 'factory'

# @param [FlyweightFactory] factory
# @param [String] plates
# @param [String] owner
# @param [String] brand
# @param [String] model
# @param [String] color
def add_car_to_police_database(factory, plates, owner, brand, model, color)
  puts ''
  puts 'Client: Adding a car to database.'
  flyweight = factory.get_flyweight([brand, model, color])

  # The client code either stores or calculates extrinsic state and passes it to the flyweight's methods.
  flyweight.operation([plates, owner])
end

# The client code usually creates a bunch of pre-populated flyweights in the initialization stage of the application.
flyweights = [
  %w[Chevrolet Camaro2018 pink],
  ['Mercedes-Benz', 'C300', 'black'],
  ['Mercedes-Benz', 'C500', 'red'],
  %w[BMW M5 red],
  %w[BMW X6 white]
]
factory = FlyweightFactory.new(flyweights)
factory.list_flyweights

add_car_to_police_database(factory, 'CL234IR', 'James Doe', 'BMW', 'M5', 'red')
add_car_to_police_database(factory, 'CL234IR', 'James Doe', 'BMW', 'X1', 'red')
puts ''

factory.list_flyweights
