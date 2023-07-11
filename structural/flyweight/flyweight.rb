# The Flyweight stores a common portion of the state (also called intrinsic state)
# that belongs to multiple real business entities.
# The Flyweight accepts the rest of the state (extrinsic state, unique for each entity) via its method parameters.
class Flyweight
  def initialize(shared_state)
    @shared_state = shared_state
  end

  def operation(unique_state)
    s = @shared_state.to_json
    u = unique_state.to_json
    puts "Flyweight: Displaying shared [#{s}] and unique [#{u}] state."
  end
end
