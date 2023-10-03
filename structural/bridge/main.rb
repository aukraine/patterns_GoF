require_relative 'abstraction'
require_relative 'implementation'

# Except for the initialization phase, where an Abstraction object gets linked with a specific Implementation object,
# the client code should only depend on the Abstraction class.
# This way the client code can support any abstraction-implementation combination.
def client_code(abstraction)
  puts abstraction.operation
end

# The client code should be able to work with any pre-configured abstraction-implementation combination.
implementation = ConcreteImplementationA.new
abstraction = Abstraction.new(implementation)
client_code(abstraction)

implementation = ConcreteImplementationB.new
abstraction = ExtendedAbstraction.new(implementation)
client_code(abstraction)
