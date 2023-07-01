# The Receiver classes contain some important business logic.
# They know how to perform all kinds of operations, associated with carrying out a request.
# In fact, any class may serve as a Receiver.
class Receiver
  def do_something(a)
    puts "Receiver: Working on (#{a}.)"
  end

  def do_something_else(b)
    puts "Receiver: Also working on (#{b}.)"
  end
end
