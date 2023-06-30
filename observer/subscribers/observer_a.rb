# Concrete Observers react to the updates issued by the Subject they had been attached to.
module Subscribers
  class ObserverA < BaseObserver
    def update(subject)
      puts 'ObserverA: Reacted to the event' if subject.state < 3
    end
  end
end