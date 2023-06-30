# However, some commands can delegate more complex operations to other objects, called "receivers".
module Commands
  class Complex < Base
    # Complex commands can accept one or several receiver objects along with any context data via the constructor.
    def initialize(receiver, a, b)
      @receiver = receiver
      @a = a
      @b = b
    end

    # Commands can delegate to any methods of a receiver.
    def execute
      puts 'Commands::Complex: Complex stuff should be done by a receiver object'
      @receiver.do_something(@a)
      @receiver.do_something_else(@b)
    end
  end
end
