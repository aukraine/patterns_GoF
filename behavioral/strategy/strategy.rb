# The Strategy interface declares operations common to all supported versions of
# some algorithm.

# The Context uses this interface to call the algorithm defined by Concrete
# Strategies.
class Strategy
  def provide_route(_, **)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Concrete Strategies implement the algorithm while following the base Strategy
# interface. The interface makes them interchangeable in the Context.

class BikeStrategy < Strategy
  def provide_route
    puts 'Go to the park'
  end
end

class CarStrategy < Strategy
  def provide_route
    puts 'Go to the zoo'
  end
end

class BusStrategy < Strategy
  def provide_route
    puts 'Go to the museum'
  end
end
