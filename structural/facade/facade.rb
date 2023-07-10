# The Facade class provides a simple interface to the complex logic of one or several subsystems.
# The Facade delegates the client requests to the appropriate objects within the subsystem.
# The Facade is also responsible for managing their lifecycle.
# All of this shields the client from the undesired complexity of the subsystem.
class Facade
  # Depending on your application's needs, you can provide the Facade with existing subsystem objects
  # or force the Facade to create them on its own.
  def initialize(subsystem1, subsystem2)
    @subsystem1 = subsystem1 || Subsystem1.new
    @subsystem2 = subsystem2 || Subsystem2.new
  end

  # The Facade's methods are convenient shortcuts to the sophisticated functionality of the subsystems.
  # However, clients get only to a fraction of a subsystem's capabilities.
  def operation
    results = []
    results.append('Facade initializes subsystems:')
    results.append(@subsystem1.operation1)
    results.append(@subsystem2.operation1)
    results.append('Facade orders subsystems to perform the action:')
    results.append(@subsystem1.operation_n)
    results.append(@subsystem2.operation_z)
  end
end
