# The Base Component provides the basic functionality of storing a mediator's instance inside component objects.
class BaseComponent
  attr_accessor :mediator

  def initialize(mediator = nil)
    @mediator = mediator
  end
end

# Concrete Components implement various functionality. They don't depend on other components.
# They also don't depend on any concrete mediator classes.
class Component1 < BaseComponent
  def do_a
    puts 'Component 1 does A.'
    @mediator.notify(self, 'A')
  end

  def do_b
    puts 'Component 1 does B.'
    @mediator.notify(self, 'B')
  end
end

class Component2 < BaseComponent
  def do_c
    puts 'Component 2 does C.'
    @mediator.notify(self, 'C')
  end

  def do_d
    puts 'Component 2 does D.'
    @mediator.notify(self, 'D')
  end
end
