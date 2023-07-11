# The Flyweight Factory creates and manages the Flyweight objects.
# It ensures that flyweights are shared correctly.
# When the client requests a flyweight, the factory either returns an existing instance or creates a new one,
# if it doesn't exist yet.
class FlyweightFactory
  def initialize(initial_flyweights)
    @flyweights = {}
    initial_flyweights.each do |state|
      @flyweights[get_key(state)] = Flyweight.new(state)
    end
  end

  # Returns a Flyweight's string hash for a given state.
  def get_key(state)
    state.sort.join('_')
  end

  # Returns an existing Flyweight with a given state or creates a new one.
  def get_flyweight(shared_state)
    key = get_key(shared_state)

    if !@flyweights.key?(key)
      puts 'FlyweightFactory: Can`t find a flyweight, creating new one.'
      @flyweights[key] = Flyweight.new(shared_state)
    else
      puts 'FlyweightFactory: Reusing existing flyweight.'
    end

    @flyweights[key]
  end

  def list_flyweights
    puts "FlyweightFactory: I have #{@flyweights.size} flyweights:"
    puts @flyweights.keys.join("\n")
  end
end
