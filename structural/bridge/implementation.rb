# The Implementation defines the interface for all implementation classes.
# It doesn't have to match the Abstraction's interface. In fact, the two interfaces can be entirely different.
# Typically the Implementation interface provides only primitive operations, while the Abstraction defines higher-level
# operations based on those primitives.
class Implementation
  def operation_implementation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Each Concrete Implementation corresponds to a specific platform and implements the Implementation interface
# using that platform's API.
class ConcreteImplementationA < Implementation
  def operation_implementation
    'ConcreteImplementationA: Here\'s the result on the platform A.'
  end
end

class ConcreteImplementationB < Implementation
  def operation_implementation
    'ConcreteImplementationB: Here\'s the result on the platform B.'
  end
end
