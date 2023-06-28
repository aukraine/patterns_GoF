require_relative 'builders/base'
require_relative 'builders/econom'
require_relative 'builders/standard'
require_relative 'builders/sport'
require_relative 'car'
require_relative 'director'

# The client code creates a builder object, passes it to the director and then initiates the construction process.
# The end result is retrieved from the builder object.

director = Director.new
builder = Builders::Standard.new
director.builder = builder

puts 'Standard middle car:'
director.build_middle_configuration
builder.product.list_parts

puts ''
builder = Builders::Sport.new
director.builder = builder

puts 'Sport full featured car:'
director.build_full_configuration
builder.product.list_parts

puts ''
builder = Builders::Econom.new
director.builder = builder

puts 'Sport economic featured car:'
director.build_minimal_configuration
builder.product.list_parts

# Remember, the Builder pattern can be used without a Director class.
puts ''
builder = Builders::Standard.new
puts 'Custom car: '
builder.produce_body
builder.produce_engine
builder.produce_style
builder.product.list_parts
