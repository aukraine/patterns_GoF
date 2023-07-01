# The Command interface declares a method for executing a command.
module Commands
  class Base
    def execute
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
