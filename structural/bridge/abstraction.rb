# The Abstraction defines the interface for the "control" part of the two class hierarchies.
# It maintains a reference to an object of the Implementation hierarchy and delegates all of the real work to this object.
class Abstraction
  def initialize(implementation)
    @implementation = implementation
  end

  def operation
    "Abstraction: Base operation with:\n"\
    "#{@implementation.operation_implementation}"
  end
end

# You can extend the Abstraction without changing the Implementation classes.
class ExtendedAbstraction < Abstraction
  def operation
    "ExtendedAbstraction: Extended operation with:\n"\
    "#{@implementation.operation_implementation}"
  end
end
