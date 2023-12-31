# The Context defines the interface of interest to clients.
class Context
  # The Context maintains a reference to one of the Strategy objects. The
  # Context does not know the concrete class of a strategy. It should work with
  # all strategies via the Strategy interface.
  attr_writer :strategy

  # Usually, the Context accepts a strategy through the constructor, but also
  # provides a setter to change it at runtime.
  def initialize(strategy)
    @strategy = strategy
  end

  # Usually, the Context allows replacing a Strategy object at runtime.
  #
  # The same as 'attr_writer'
  def strategy=(strategy)
    @strategy = strategy
  end

  # The Context delegates some work to the Strategy object instead of
  # implementing multiple versions of the algorithm on its own.
  def find_route
    puts @strategy.provide_route
  end
end
