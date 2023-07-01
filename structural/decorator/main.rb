require_relative 'decorators/base'
require_relative 'decorators/slack'
require_relative 'decorators/sms'
require_relative 'notifier'

# The client code works with all objects using the Component interface. This way
# it can stay independent of the concrete classes of components it works with.
#
# This way the client code can support both simple components...
message = 'Hi!'

puts 'Client: I\'ve got a simple component:'
notifier = Notifier.new
notifier.notify(message)
puts ''

# ...as well as decorated ones.
puts 'Client: Now I\'ve got a decorated component:'
decorator1 = Decorators::Sms.new(notifier)
decorator1.notify(message)
puts ''

# Note how decorators can wrap not only simple components but the other decorators as well.
puts 'Client: Now I\'ve got a twice decorated component:'
decorator2 = Decorators::Slack.new(decorator1)
decorator2.notify(message)
