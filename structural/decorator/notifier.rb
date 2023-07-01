# The base Component interface defines operations that can be altered by decorators.
class BaseNotifier
  def send(_message)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Concrete Components provide default implementations of the operations.
# There might be several variations of these classes.
class Notifier < BaseNotifier
  def notify(message)
    puts "'#{message}' message has been sent via Email"
  end
end
