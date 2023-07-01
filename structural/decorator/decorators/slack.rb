# Decorators can execute their behavior either before or after the call to a wrapped object.
module Decorators
  class Slack < Base
    def notify(message)
      component.notify(message)
      puts "also '#{message}' message has been sent via Slack"
    end
  end
end
