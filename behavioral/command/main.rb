require_relative 'commands/base'
require_relative 'commands/complex'
require_relative 'commands/simple'
require_relative 'invoker'
require_relative 'receiver'

# The client code can parameterize an invoker with any commands.
invoker = Invoker.new
invoker.on_start = Commands::Simple.new('Say Hi!')
receiver = Receiver.new
invoker.on_finish = Commands::Complex.new(receiver, 'Send email', 'Save report')

invoker.do_something_important
