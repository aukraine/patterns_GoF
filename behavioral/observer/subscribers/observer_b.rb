# Concrete Observers react to the updates issued by the Subject they had been attached to.
module Subscribers
  class ObserverB < BaseObserver
    def update(subject)
      puts 'ObserverB: Reacted to the event' if subject.state.zero? || subject.state >= 2
    end
  end
end
