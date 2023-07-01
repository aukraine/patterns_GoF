# Concrete Decorators call the wrapped object and alter its result in some way.
module Decorators
  class Sms < Base
    # Decorators may call parent implementation of the operation, instead of calling the wrapped object directly.
    # This approach simplifies extension of decorator classes.
    def notify(message)
      component.notify(message)
      puts "also '#{message}' message has been sent via SMS"
    end
  end
end
