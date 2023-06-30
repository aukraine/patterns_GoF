# The Subject interface declares a set of methods for managing subscribers.
module Publishers
  class BaseSubject
    # Attach an observer to the subject.
    def attach(observer)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    # Detach an observer from the subject.
    def detach(observer)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    # Notify all observers about an event.
    def notify
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
