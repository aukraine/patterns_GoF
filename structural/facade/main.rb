require_relative 'facade'
require_relative 'subsystem'

# The client code works with complex subsystems through a simple interface provided by the Facade.
# When a facade manages the lifecycle of the subsystem, the client might not even know about the existence of subsystem.
# This approach lets you keep the complexity under control.
def client_code(facade)
  puts facade.operation
end

# The client code may have some of the subsystem's objects already created.
# In this case, it might be worthwhile to initialize the Facade with these objects
# instead of letting the Facade create new instances.
subsystem1 = Subsystem1.new
subsystem2 = Subsystem2.new
facade = Facade.new(subsystem1, subsystem2)
client_code(facade)
