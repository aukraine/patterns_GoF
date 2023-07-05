require_relative 'components/base'
require_relative 'components/component_a'
require_relative 'components/component_b'
require_relative 'visitors/base'
require_relative 'visitors/visitor_1'
require_relative 'visitors/visitor_2'

# The client code can run visitor operations over any set of elements without figuring out their concrete classes.
# The accept operation directs a call to the appropriate operation in the visitor object.
def client_code(components, visitor)
  components.each do |component|
    component.accept(visitor)
  end
end

components = [Components::ComponentA.new, Components::ComponentB.new]

puts 'The client code works with all visitors via the base Visitor interface:'
visitor1 = Visitors::Visitor1.new
client_code(components, visitor1)

puts 'It allows the same client code to work with different types of visitors:'
visitor2 = Visitors::Visitor2.new
client_code(components, visitor2)