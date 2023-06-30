# The Observer interface declares the update method, used by subjects.
module Subscribers
  class BaseObserver
    # Receive update from subject.
    def update(_subject)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
