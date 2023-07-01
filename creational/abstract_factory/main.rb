require_relative 'factories/base'
require_relative 'factories/modern'
require_relative 'factories/classic'
require_relative 'factories/vintage'
require_relative 'products/modern/base'
require_relative 'products/modern/sofa'
require_relative 'products/modern/table'
require_relative 'products/modern/chair'
require_relative 'products/classic/base'
require_relative 'products/classic/sofa'
require_relative 'products/classic/table'
require_relative 'products/classic/chair'
require_relative 'products/vintage/base'
require_relative 'products/vintage/sofa'
require_relative 'products/vintage/table'
require_relative 'products/vintage/chair'

# The client code works with factories and products only through abstract types:
# AbstractFactory and AbstractProduct. This lets you pass any factory or product
# subclass to the client code without breaking it.
def client_code(factory)
  sofa = factory.create_sofa
  table = factory.create_table
  chair = factory.create_chair

  puts sofa.type
  puts table.type
  puts chair.type

  [sofa, table, chair]
end

# The client code can work with any concrete factory class.
puts 'Creating Modern products'
modern_products = client_code(Factories::Modern.new)

puts ''
puts 'Creating Classic products'
classic_products = client_code(Factories::Classic.new)

puts ''
puts 'Creating Vintage products'
vintage_products = client_code(Factories::Vintage.new)

puts ''
puts modern_products.first.compare classic_products.last
puts classic_products.first.compare vintage_products.first
puts vintage_products.last.compare modern_products.last
