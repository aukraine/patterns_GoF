# The Component interface declares an `accept` method that should take the base visitor interface as an argument.
module Components
  class Base
    def accept(_visitor)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
